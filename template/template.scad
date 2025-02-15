$fn = 100;
$fa = 1;
$fs = 1;

// 変数の宣言
// 本体の高さ
cylinder_height = 40;
// svgの座標
svg_camvas = -297;

// 関数の宣言
module load_svg(import_file){

	// 高さを1mmで押し出し
	linear_extrude(height = 1){ 

		// svgの"height"の値をマイナスにする
		translate([0, svg_camvas, 0]){ 

				import(import_file);

		 }

	} 

}

// 本体にsvgを彫り込む
difference(){
	
	// 本体
	translate([0, 0, -cylinder_height+0.6]){ 

		cylinder(h=40, r=12);

	}

	// svgを読み込む
	load_svg("template.svg");

}

