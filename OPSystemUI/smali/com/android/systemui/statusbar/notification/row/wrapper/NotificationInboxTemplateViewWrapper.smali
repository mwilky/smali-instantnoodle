.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "NotificationInboxTemplateViewWrapper.java"


# instance fields
.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mInboxText0:Landroid/widget/TextView;

.field private mInboxText1:Landroid/widget/TextView;

.field private mInboxText2:Landroid/widget/TextView;

.field private mInboxText3:Landroid/widget/TextView;

.field private mInboxText4:Landroid/widget/TextView;

.field private mInboxText5:Landroid/widget/TextView;

.field private mInboxText6:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private resolveViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    
    move-object v1, p1
    
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isColorized()Z

    move-result v1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mTitle:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mTitle:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock
    
    if-nez v1, :cond_stock
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationTitleTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020475

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mText:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mText:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock2
    
    if-nez v1, :cond_stock2
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10202cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText0:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock3
    
    if-nez v1, :cond_stock3
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10202d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText1:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText1:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock4
    
    if-nez v1, :cond_stock4
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10202d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText2:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText2:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock5
    
    if-nez v1, :cond_stock5
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10202d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText3:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText3:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock6
    
    if-nez v1, :cond_stock6
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10202d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText4:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText4:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock7
    
    if-nez v1, :cond_stock7
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10202d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText5:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText5:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock8
    
    if-nez v1, :cond_stock8
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10202d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText6:Landroid/widget/TextView;
    
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mInboxText6:Landroid/widget/TextView;
    
    if-eqz p1, :cond_stock9
    
    if-nez v1, :cond_stock9
    
    sget v2, Lcom/android/mwilky/Renovate;->mNotificationSummaryTextColor:I
    
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_stock9
    return-void
.end method


# virtual methods
.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->resolveViews(Landroid/service/notification/StatusBarNotification;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationInboxTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_1
    return-void
.end method
