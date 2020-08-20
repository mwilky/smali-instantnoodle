.class public Lcom/oneplus/worklife/TipLayout;
.super Landroid/widget/LinearLayout;
.source "TipLayout.java"


# instance fields
.field private mTipDrawable:Lcom/oneplus/worklife/TipDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/worklife/TipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/worklife/TipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/worklife/TipLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/oneplus/worklife/TipDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lcom/oneplus/worklife/TipDrawable;-><init>(IILandroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/worklife/TipLayout;->mTipDrawable:Lcom/oneplus/worklife/TipDrawable;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/oneplus/worklife/TipLayout;->mTipDrawable:Lcom/oneplus/worklife/TipDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oneplus/worklife/TipDrawable;->setWidth(I)V

    iget-object p1, p0, Lcom/oneplus/worklife/TipLayout;->mTipDrawable:Lcom/oneplus/worklife/TipDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oneplus/worklife/TipDrawable;->setHeight(I)V

    iget-object p1, p0, Lcom/oneplus/worklife/TipLayout;->mTipDrawable:Lcom/oneplus/worklife/TipDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
