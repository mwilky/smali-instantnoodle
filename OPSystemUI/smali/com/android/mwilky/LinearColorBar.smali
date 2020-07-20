.class public Lcom/android/mwilky/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# static fields
.field static final LEFT_COLOR:I = -0x1

.field static final MIDDLE_COLOR:I = -0x1

.field static final RIGHT_COLOR:I = -0x777778


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field private mLeftColor:I

.field mLineWidth:I

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/RectF;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mwilky/LinearColorBar;->mLeftColor:I

    .line 44
    const v0, -0x777778

    iput v0, p0, Lcom/android/mwilky/LinearColorBar;->mRightColor:I

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mwilky/LinearColorBar;->setWillNotDraw(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_64

    const/4 v0, 0x2

    goto :goto_65

    :cond_64
    move v0, v1

    :goto_65
    iput v0, p0, Lcom/android/mwilky/LinearColorBar;->mLineWidth:I

    .line 63
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/mwilky/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    return-void
.end method

.method private updateIndicator()V
    .registers 12

    .line 91
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 92
    .local v0, "off":I
    if-gez v0, :cond_c

    const/4 v0, 0x0

    .line 93
    :cond_c
    iget-object v1, p0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 94
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 95
    iget-boolean v1, p0, Lcom/android/mwilky/LinearColorBar;->mShowingGreen:Z

    if-eqz v1, :cond_37

    .line 96
    iget-object v1, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v2, v0, -0x2

    int-to-float v6, v2

    iget v8, p0, Lcom/android/mwilky/LinearColorBar;->mRightColor:I

    const v2, 0xffffff

    and-int v7, v8, v2

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_4e

    .line 99
    :cond_37
    iget-object v1, p0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v2, v0, -0x2

    int-to-float v6, v2

    const v7, 0xffffff

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 102
    :goto_4e
    iget-object v1, p0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    div-int/lit8 v2, v0, 0x2

    int-to-float v6, v2

    const v7, 0xa0a0a0

    const v8, -0x5f5f60

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 104
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/mwilky/LinearColorBar;->getWidth()I

    move-result v2

    .line 118
    .local v2, "width":I
    const/4 v3, 0x0

    .line 120
    .local v3, "left":I
    int-to-float v4, v2

    iget v5, v0, Lcom/android/mwilky/LinearColorBar;->mRedRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v3

    .line 121
    .local v4, "right":I
    int-to-float v5, v2

    iget v6, v0, Lcom/android/mwilky/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v4

    .line 122
    .local v5, "right2":I
    int-to-float v6, v2

    iget v7, v0, Lcom/android/mwilky/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v5

    .line 125
    .local v6, "right3":I
    iget-boolean v7, v0, Lcom/android/mwilky/LinearColorBar;->mShowingGreen:Z

    if-eqz v7, :cond_25

    .line 126
    move v7, v5

    .line 127
    .local v7, "indicatorLeft":I
    move v8, v6

    .local v8, "indicatorRight":I
    goto :goto_27

    .line 129
    .end local v7    # "indicatorLeft":I
    .end local v8    # "indicatorRight":I
    :cond_25
    move v7, v4

    .line 130
    .restart local v7    # "indicatorLeft":I
    move v8, v5

    .line 133
    .restart local v8    # "indicatorRight":I
    :goto_27
    iget v9, v0, Lcom/android/mwilky/LinearColorBar;->mLastInterestingLeft:I

    if-ne v9, v7, :cond_2f

    iget v9, v0, Lcom/android/mwilky/LinearColorBar;->mLastInterestingRight:I

    if-eq v9, v8, :cond_d6

    .line 134
    :cond_2f
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 135
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 136
    if-ge v7, v8, :cond_d2

    .line 137
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    .line 138
    .local v9, "midTopY":F
    const/16 v17, 0x0

    .line 139
    .local v17, "midBottomY":I
    const/16 v18, 0x2

    .line 140
    .local v18, "xoff":I
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v11, v7

    iget-object v12, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 141
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v11, v7

    const/4 v12, 0x0

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x0

    move v14, v9

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 144
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    const/4 v15, 0x0

    invoke-virtual {v10, v11, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    int-to-float v13, v8

    const/4 v14, 0x0

    int-to-float v12, v8

    iget-object v15, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move/from16 v19, v12

    move v12, v9

    move/from16 v16, v15

    move/from16 v15, v19

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 148
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 149
    iget v10, v0, Lcom/android/mwilky/LinearColorBar;->mLineWidth:I

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float v19, v10, v11

    .line 150
    .local v19, "lineOffset":F
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v11, -0x40000000    # -2.0f

    add-float v12, v19, v11

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 151
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-float v11, v19, v11

    int-to-float v12, v7

    add-float v13, v12, v19

    int-to-float v12, v7

    add-float v16, v12, v19

    iget-object v12, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move/from16 v20, v12

    move v12, v9

    move/from16 v15, v16

    move/from16 v16, v20

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 154
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    sub-float v11, v11, v19

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 155
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    sub-float v11, v11, v19

    int-to-float v12, v8

    sub-float v13, v12, v19

    int-to-float v12, v8

    sub-float v15, v12, v19

    iget-object v12, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move/from16 v16, v12

    move v12, v9

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 159
    .end local v9    # "midTopY":F
    .end local v17    # "midBottomY":I
    .end local v18    # "xoff":I
    .end local v19    # "lineOffset":F
    :cond_d2
    iput v7, v0, Lcom/android/mwilky/LinearColorBar;->mLastInterestingLeft:I

    .line 160
    iput v8, v0, Lcom/android/mwilky/LinearColorBar;->mLastInterestingRight:I

    .line 163
    :cond_d6
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_ec

    .line 164
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 165
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 168
    :cond_ec
    if-ge v3, v4, :cond_10c

    .line 169
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    int-to-float v10, v3

    iput v10, v9, Landroid/graphics/RectF;->left:F

    .line 170
    int-to-float v10, v4

    iput v10, v9, Landroid/graphics/RectF;->right:F

    .line 171
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/android/mwilky/LinearColorBar;->mLeftColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    sget v9, Lcom/android/mwilky/Renovate;->mQsRamBarCornerRadius:I

    .line 173
    .local v9, "mCornerRadius":I
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    int-to-float v11, v9

    int-to-float v12, v9

    iget-object v13, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 174
    sub-int v10, v4, v3

    sub-int/2addr v2, v10

    .line 175
    move v3, v4

    .line 178
    .end local v9    # "mCornerRadius":I
    :cond_10c
    add-int v4, v3, v2

    .line 179
    if-ge v3, v4, :cond_129

    .line 180
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    int-to-float v10, v3

    iput v10, v9, Landroid/graphics/RectF;->left:F

    .line 181
    int-to-float v10, v4

    iput v10, v9, Landroid/graphics/RectF;->right:F

    .line 182
    iget-object v9, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/android/mwilky/LinearColorBar;->mRightColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    sget v9, Lcom/android/mwilky/Renovate;->mQsRamBarCornerRadius:I

    int-to-float v9, v9

    .line 184
    .local v9, "mCornerRadius":F
    iget-object v10, v0, Lcom/android/mwilky/LinearColorBar;->mRect:Landroid/graphics/RectF;

    iget-object v11, v0, Lcom/android/mwilky/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v9, v9, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    .end local v9    # "mCornerRadius":F
    :cond_129
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 109
    invoke-direct {p0}, Lcom/android/mwilky/LinearColorBar;->updateIndicator()V

    .line 110
    return-void
.end method

.method public setLeftColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 75
    iput p1, p0, Lcom/android/mwilky/LinearColorBar;->mLeftColor:I

    .line 76
    return-void
.end method

.method public setRatios(FFF)V
    .registers 4
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .line 68
    iput p1, p0, Lcom/android/mwilky/LinearColorBar;->mRedRatio:F

    .line 69
    iput p2, p0, Lcom/android/mwilky/LinearColorBar;->mYellowRatio:F

    .line 70
    iput p3, p0, Lcom/android/mwilky/LinearColorBar;->mGreenRatio:F

    .line 71
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->invalidate()V

    .line 72
    return-void
.end method

.method public setRightColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 79
    iput p1, p0, Lcom/android/mwilky/LinearColorBar;->mRightColor:I

    .line 80
    return-void
.end method

.method public setShowingGreen(Z)V
    .registers 3
    .param p1, "showingGreen"    # Z

    .line 83
    iget-boolean v0, p0, Lcom/android/mwilky/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_c

    .line 84
    iput-boolean p1, p0, Lcom/android/mwilky/LinearColorBar;->mShowingGreen:Z

    .line 85
    invoke-direct {p0}, Lcom/android/mwilky/LinearColorBar;->updateIndicator()V

    .line 86
    invoke-virtual {p0}, Lcom/android/mwilky/LinearColorBar;->invalidate()V

    .line 88
    :cond_c
    return-void
.end method
