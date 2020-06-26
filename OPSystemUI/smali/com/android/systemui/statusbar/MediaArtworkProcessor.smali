.class public final Lcom/android/systemui/statusbar/MediaArtworkProcessor;
.super Ljava/lang/Object;
.source "MediaArtworkProcessor.kt"


# instance fields
.field private mDownSample:I

.field private mColorAlpha:I

.field private mArtworkCache:Landroid/graphics/Bitmap;

.field private final mTmpSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;
    
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I
    
    const/16 v0, 0xb2

    iput v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mColorAlpha:I

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final processArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 32
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "inBitmap"

    iget-object v3, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    .line 33
    .local v3, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_b

    .line 34
    return-object v3

    .line 36
    :cond_b
    const-string v4, "context"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v4, "artwork"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "input":Landroid/renderscript/Allocation;
    const/4 v6, 0x0

    .line 40
    .local v6, "output":Landroid/renderscript/Allocation;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

	move-result-object v7

	iget-object v8, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

	invoke-virtual {v7, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-static/range {p1 .. p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v7

    .line 41
    .local v7, "create":Landroid/renderscript/RenderScript;
    invoke-static {v7}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v8

    .line 42
    .local v8, "blur":Landroid/renderscript/ScriptIntrinsicBlur;
    const/4 v9, 0x0

    .line 44
    .local v9, "createScaledBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    invoke-direct {v10, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    .local v10, "rect":Landroid/graphics/Rect;
    iget-object v11, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    .line 47
    .local v11, "point":Landroid/graphics/Point;
    :try_start_36
    sget v14, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_38} :catch_f8
    .catchall {:try_start_36 .. :try_end_38} :catchall_f4

    const/high16 v15, 0x40a00000    # 5.0f

    cmpg-float v14, v14, v15

    const/4 v15, 0x2

    if-gez v14, :cond_4c

    .line 48
    :try_start_3f
    iput v15, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_41} :catch_47
    .catchall {:try_start_3f .. :try_end_41} :catchall_42

    goto :goto_4f

    .line 85
    :catchall_42
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_119

    .line 81
    :catch_47
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_fb

    .line 50
    :cond_4c
    const/4 v14, 0x6

    :try_start_4d
    iput v14, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I

    .line 52
    :goto_4f
    iget v14, v11, Landroid/graphics/Point;->x:I

    iget v15, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I

    div-int/2addr v14, v15

    iget v15, v11, Landroid/graphics/Point;->y:I

    iget v12, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I

    div-int/2addr v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v10, v12}, Landroid/util/MathUtils;->fitRect(Landroid/graphics/Rect;I)V

    .line 53
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    const/4 v15, 0x1

    invoke-static {v2, v12, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v9, v12

    .line 54
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    .line 56
    .local v12, "config":Landroid/graphics/Bitmap$Config;
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_77} :catch_f8
    .catchall {:try_start_4d .. :try_end_77} :catchall_f4

    .line 57
    .local v14, "config2":Landroid/graphics/Bitmap$Config;
    if-eq v12, v14, :cond_81

    .line 58
    :try_start_79
    invoke-virtual {v9, v14, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 59
    .local v13, "copy":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_80} :catch_47
    .catchall {:try_start_79 .. :try_end_80} :catchall_42

    .line 60
    move-object v9, v13

    .line 63
    .end local v13    # "copy":Landroid/graphics/Bitmap;
    :cond_81
    :try_start_81
    sget v13, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_83} :catch_f8
    .catchall {:try_start_81 .. :try_end_83} :catchall_f4

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v17

    if-ltz v13, :cond_b6

    .line 64
    :try_start_89
    sget-object v13, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v15, 0x2

    invoke-static {v7, v9, v13, v15}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v13

    move-object v4, v13

    .line 65
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v13, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "outBitmap":Landroid/graphics/Bitmap;
    invoke-static {v7, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v13

    move-object v6, v13

    .line 68
    sget v13, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    invoke-virtual {v8, v13}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 69
    invoke-virtual {v8, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 70
    invoke-virtual {v8, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 71
    invoke-virtual {v6, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_b5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_b5} :catch_47
    .catchall {:try_start_89 .. :try_end_b5} :catchall_42

    goto :goto_ba

    .line 73
    .end local v0    # "outBitmap":Landroid/graphics/Bitmap;
    :cond_b6
    :try_start_b6
    invoke-virtual {v9, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .restart local v0    # "outBitmap":Landroid/graphics/Bitmap;
    :goto_ba
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v13

    .line 76
    .local v13, "findBackgroundSwatch":Landroidx/palette/graphics/Palette$Swatch;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .local v15, "canvas":Landroid/graphics/Canvas;
    const-string v2, "swatch"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v13}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v2
    :try_end_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b6 .. :try_end_cc} :catch_f8
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_f4

    move-object/from16 v16, v3

    .end local v3    # "bitmap2":Landroid/graphics/Bitmap;
    .local v16, "bitmap2":Landroid/graphics/Bitmap;
    :try_start_ce
    iget v3, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mColorAlpha:I

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 79
    const-string v2, "outBitmap"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ce .. :try_end_dc} :catch_f2
    .catchall {:try_start_ce .. :try_end_dc} :catchall_118

    .line 80
    nop

    .line 85
    sget v2, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_eb

    .line 86
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    .line 87
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 89
    :cond_eb
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    invoke-virtual {v8}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 80
    return-object v0

    .line 81
    .end local v0    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "config":Landroid/graphics/Bitmap$Config;
    .end local v13    # "findBackgroundSwatch":Landroidx/palette/graphics/Palette$Swatch;
    .end local v14    # "config2":Landroid/graphics/Bitmap$Config;
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    :catch_f2
    move-exception v0

    goto :goto_fb

    .line 85
    .end local v16    # "bitmap2":Landroid/graphics/Bitmap;
    .restart local v3    # "bitmap2":Landroid/graphics/Bitmap;
    :catchall_f4
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "bitmap2":Landroid/graphics/Bitmap;
    .restart local v16    # "bitmap2":Landroid/graphics/Bitmap;
    goto :goto_119

    .line 81
    .end local v16    # "bitmap2":Landroid/graphics/Bitmap;
    .restart local v3    # "bitmap2":Landroid/graphics/Bitmap;
    :catch_f8
    move-exception v0

    move-object/from16 v16, v3

    .line 82
    .end local v3    # "bitmap2":Landroid/graphics/Bitmap;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "bitmap2":Landroid/graphics/Bitmap;
    :goto_fb
    :try_start_fb
    const-string v2, "MediaArtworkProcessor"

    const-string v3, "error while processing artwork"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_102
    .catchall {:try_start_fb .. :try_end_102} :catchall_118

    .line 83
    const/4 v2, 0x0

    .line 85
    sget v3, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v12

    if-ltz v3, :cond_111

    .line 86
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    .line 87
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 89
    :cond_111
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    invoke-virtual {v8}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 83
    return-object v2

    .line 85
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_118
    move-exception v0

    :goto_119
    sget v2, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_127

    .line 86
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    .line 87
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 89
    :cond_127
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    invoke-virtual {v8}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 91
    throw v0
.end method
