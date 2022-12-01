package truebon_test;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

public class dsa {
	public static void resizePng(int width, int height) {
		String imgOriginalPath= "C:\\Users\\Truebon\\Documents\\GitHub\\molla\\truebon_test\\src\\main\\webapp\\images\\sample2.PNG";   // 원본 이미지 파일명
        String imgTargetPath= "C:\\Users\\Truebon\\Documents\\GitHub\\molla\\truebon_test\\src\\main\\webapp\\images\\sample_new.png";   // 새 이미지 파일명
        String imgFormat = "png";   // 새 이미지 포맷. jpg, gif 등
        float newWidth = width;   // 변경 할 넓이
        float newHeight = height;   // 변경 할 높이	
 
        //System.out.print(imgOriginalPath);
        
        Image image;
        int imageWidth;
        int imageHeight;
        double ratio;
        int w;
        int h;
 
        try{
            // 원본 이미지 가져오기
            image = ImageIO.read(new File(imgOriginalPath));
 
            // 원본 이미지 사이즈 가져오기
            imageWidth = image.getWidth(null);
            imageHeight = image.getHeight(null);

            w = (int)((float)imageWidth * (newWidth / 100));
            h = (int)((float)imageHeight * (newHeight / 100));

            // 이미지 리사이즈
            // Image.SCALE_DEFAULT : 기본 이미지 스케일링 알고리즘 사용
            // Image.SCALE_FAST    : 이미지 부드러움보다 속도 우선
            // Image.SCALE_REPLICATE : ReplicateScaleFilter 클래스로 구체화 된 이미지 크기 조절 알고리즘
            // Image.SCALE_SMOOTH  : 속도보다 이미지 부드러움을 우선
            // Image.SCALE_AREA_AVERAGING  : 평균 알고리즘 사용
            Image resizeImage = image.getScaledInstance(w, h, Image.SCALE_FAST);
 
            System.out.println(resizeImage);
            
            //새 이미지  저장하기
            BufferedImage newImage = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);          
            Graphics g = newImage.getGraphics();
            g.drawImage(resizeImage, 0, 0, null);
            g.dispose();
            ImageIO.write(newImage, imgFormat, new File(imgTargetPath));
 
        }catch (Exception e){
 
            e.printStackTrace();
 
        }
	}
	
	public static void main(String[] args) {
		
	}
}
