.class public Lcom/android/mwilky/Renovate;
.super Ljava/lang/Object;
.source "Renovate.java"


# static fields
.field public static mAlbumArtBlurAmount:F

.field public static mDarkQsIcons:Z

.field public static mDisableQsScrim:Z

.field public static mFingerprintDisabledColor:I

.field public static mFingerprintFlashColor:I

.field public static mFingerprintNormalColor:I

.field public static mHideLockscreenAlbumArt:Z

.field public static mHideLockscreenClock:Z

.field public static mHideLockscreenShortcuts:Z

.field public static mHideLockscreenStatusbar:Z

.field public static mHideQsDateView:Z

.field public static mHideQsLabels:Z

.field public static mHideQsStatusbarIconView:Z

.field public static mLockscreenScrimColor:I

.field public static mOreoQs:Z

.field public static mQsAnimClick:Z

.field public static mQsAnimExpand:Z

.field public static mQsAnimationDuration:I

.field public static mQsAnimationInterpolator:I

.field public static mQsAnimationStyle:I

.field public static mQsBlur:I

.field public static mQsBlurAlpha:I

.field public static mQsBlurEnabled:Z

.field public static mQsColumns:I

.field public static mQsExpandVibration:Z

.field public static mQsRows:I

.field public static mQsScrimColor:I

.field public static mQsVibration:Z

.field public static mQuickQsNumber:I

.field public static mQuickQsPulldown:I

.field public static mScrambleKeypad:Z

.field public static mShowQsDetail:Z

.field public static mSmartPulldown:I

.field public static mUnlockFingerprintColors:Z

.field public static mUnlockLockscreenScrimColors:Z

.field public static mUnlockQsColors:Z

.field public static mUnlockQsScrimColors:Z

.field public static mUseAppColorForFp:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAlbumArtBlurAmount(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_album_art_blur_amount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    .line 92
    return-void
.end method

.method public static setColorChanges(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_unlock_fp_colors"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockFingerprintColors:Z

    .line 171
    const-string v1, "tweaks_unlock_qs_colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    .line 172
    return-void
.end method

.method public static setDarkQsIcons(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_dark_qs_icons"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mDarkQsIcons:Z

    .line 107
    return-void
.end method

.method public static setFpIconColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_fp_normal_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintNormalColor:I

    .line 84
    const-string v1, "tweaks_fp_flash_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintFlashColor:I

    .line 85
    const-string v1, "tweaks_fp_disabled_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintDisabledColor:I

    .line 86
    const-string v1, "tweaks_fp_app_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    move v2, v3

    :cond_27
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUseAppColorForFp:Z

    .line 87
    return-void
.end method

.method public static setHideLockscreenAlbumArt(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_album_art"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenAlbumArt:Z

    .line 74
    return-void
.end method

.method public static setHideLockscreenClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenClock:Z

    .line 64
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 78
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_shortcuts"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenShortcuts:Z

    .line 79
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_lockscreen_statusbar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideLockscreenStatusbar:Z

    .line 69
    return-void
.end method

.method public static setHideQsLabel(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_qs_labels"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsLabels:Z

    .line 123
    return-void
.end method

.method public static setOreoQs(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_oreo_qs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mOreoQs:Z

    .line 102
    return-void
.end method

.method public static setQsAnimationValues(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qstile_animation_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationStyle:I

    .line 152
    const-string v1, "tweaks_qstile_animation_duration"

    const/16 v3, 0x7d0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationDuration:I

    .line 153
    const-string v1, "tweaks_qstile_animation_interpolator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationInterpolator:I

    .line 154
    const-string v1, "tweaks_qs_anim_expand"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2a

    move v1, v3

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mQsAnimExpand:Z

    .line 155
    const-string v1, "tweaks_qs_anim_click"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_36

    move v2, v3

    :cond_36
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsAnimClick:Z

    .line 156
    return-void
.end method

.method public static setQsBlur(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_blur_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mQsBlurEnabled:Z

    .line 128
    const-string v1, "tweaks_qs_blur"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlur:I

    .line 129
    const/16 v1, 0x64

    const-string v2, "tweaks_qs_blur_alpha"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlurAlpha:I

    .line 130
    return-void
.end method

.method public static setQsExpandVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_vibrate_expansion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsExpandVibration:Z

    .line 97
    return-void
.end method

.method public static setQsScrimColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_unlock_qs_scrim_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockQsScrimColors:Z

    .line 161
    const-string v1, "tweaks_qs_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsScrimColor:I

    .line 162
    const-string v1, "tweaks_disable_qs_scrim"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_25

    move v1, v3

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mDisableQsScrim:Z

    .line 163
    const-string v1, "tweaks_unlock_lockscreen_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUnlockLockscreenScrimColors:Z

    .line 164
    const-string v1, "tweaks_lockscreen_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLockscreenScrimColor:I

    .line 166
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_rows"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 52
    const-string v1, "tweaks_qs_columns"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 53
    const-string v1, "tweaks_quick_qs_buttons"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsNumber:I

    .line 54
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsVibration:Z

    .line 118
    return-void
.end method

.method public static setQsViewsVisibility(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_hide_qs_date_view"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/mwilky/Renovate;->mHideQsDateView:Z

    .line 146
    const-string v1, "tweaks_hide_qs_statusbar_icons_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsStatusbarIconView:Z

    .line 147
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 141
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_scramble_pin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mScrambleKeypad:Z

    .line 59
    return-void
.end method

.method public static setShowQsDetail(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_detail"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mShowQsDetail:Z

    .line 112
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 135
    return-void
.end method
