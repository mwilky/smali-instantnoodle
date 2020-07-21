.class public Lcom/android/mwilky/Renovate;
.super Ljava/lang/Object;
.source "Renovate.java"


# static fields
.field public static mAlbumArtBlurAmount:F

.field public static mDarkQsIcons:Z

.field public static mDisableQsScrim:Z

.field public static mExpandedNotifications:Z

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

.field public static mQsBackgroundColor:I

.field public static mQsBlur:I

.field public static mQsBlurAlpha:I

.field public static mQsBlurEnabled:Z

.field public static mQsColumns:I

.field public static mQsExpandVibration:Z

.field public static mQsRamBar:I

.field public static mQsRamBarCornerRadius:I

.field public static mQsRamBarFreeBackgroundColor:I

.field public static mQsRamBarFreeTextColor:I

.field public static mQsRamBarHeight:I

.field public static mQsRamBarUsedBackgroundColor:I

.field public static mQsRamBarUsedTextColor:I

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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAlbumArtBlurAmount(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_album_art_blur_amount"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    .line 105
    return-void
.end method

.method public static setColorChanges(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
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

    .line 184
    const-string v1, "tweaks_unlock_qs_colors"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    .line 185
    return-void
.end method

.method public static setDarkQsIcons(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
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

    .line 120
    return-void
.end method

.method public static setExpandedNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_expanded_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mExpandedNotifications:Z

    .line 213
    return-void
.end method

.method public static setFpIconColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_fp_normal_color"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintNormalColor:I

    .line 97
    const-string v1, "tweaks_fp_flash_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintFlashColor:I

    .line 98
    const-string v1, "tweaks_fp_disabled_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mFingerprintDisabledColor:I

    .line 99
    const-string v1, "tweaks_fp_app_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    move v2, v3

    :cond_27
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mUseAppColorForFp:Z

    .line 100
    return-void
.end method

.method public static setHideLockscreenAlbumArt(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
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

    .line 87
    return-void
.end method

.method public static setHideLockscreenClock(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
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

    .line 77
    return-void
.end method

.method public static setHideLockscreenShortcuts(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
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

    .line 92
    return-void
.end method

.method public static setHideLockscreenStatusbar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
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

    .line 82
    return-void
.end method

.method public static setHideQsLabel(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
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

    .line 136
    return-void
.end method

.method public static setOreoQs(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
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

    .line 115
    return-void
.end method

.method public static setQsAnimationValues(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qstile_animation_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationStyle:I

    .line 165
    const-string v1, "tweaks_qstile_animation_duration"

    const/16 v3, 0x7d0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationDuration:I

    .line 166
    const-string v1, "tweaks_qstile_animation_interpolator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsAnimationInterpolator:I

    .line 167
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

    .line 168
    const-string v1, "tweaks_qs_anim_click"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_36

    move v2, v3

    :cond_36
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mQsAnimClick:Z

    .line 169
    return-void
.end method

.method public static setQsBackgroundColor(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBackgroundColor:I

    .line 190
    return-void
.end method

.method public static setQsBlur(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
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

    .line 141
    const-string v1, "tweaks_qs_blur"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlur:I

    .line 142
    const/16 v1, 0x64

    const-string v2, "tweaks_qs_blur_alpha"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsBlurAlpha:I

    .line 143
    return-void
.end method

.method public static setQsExpandVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
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

    .line 110
    return-void
.end method

.method public static setQsRamBar(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_ram_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBar:I

    .line 195
    const-string v1, "tweaks_qs_ram_bar_height"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarHeight:I

    .line 196
    const-string v1, "tweaks_qs_ram_bar_corner_radius"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarCornerRadius:I

    .line 197
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    if-eqz v1, :cond_5b

    .line 198
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_ram_bar_used_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarUsedBackgroundColor:I

    .line 199
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_TILE_OFF:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_ram_bar_free_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarFreeBackgroundColor:I

    .line 200
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_ram_bar_used_text_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarUsedTextColor:I

    .line 201
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const-string v2, "tweaks_qs_ram_bar_free_text_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarFreeTextColor:I

    goto :goto_7b

    .line 203
    :cond_5b
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarUsedBackgroundColor:I

    .line 204
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_TILE_OFF:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarFreeBackgroundColor:I

    .line 205
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarUsedTextColor:I

    .line 206
    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_TILE_OFF:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRamBarFreeTextColor:I

    .line 208
    :goto_7b
    return-void
.end method

.method public static setQsScrimColors(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
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

    .line 174
    const-string v1, "tweaks_qs_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsScrimColor:I

    .line 175
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

    .line 176
    const-string v1, "tweaks_unlock_lockscreen_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    sput-boolean v3, Lcom/android/mwilky/Renovate;->mUnlockLockscreenScrimColors:Z

    .line 177
    const-string v1, "tweaks_lockscreen_scrim_color"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mLockscreenScrimColor:I

    .line 179
    return-void
.end method

.method public static setQsTileLayout(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_rows"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsRows:I

    .line 65
    const-string v1, "tweaks_qs_columns"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    .line 66
    const-string v1, "tweaks_quick_qs_buttons"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsNumber:I

    .line 67
    return-void
.end method

.method public static setQsVibration(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
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

    .line 131
    return-void
.end method

.method public static setQsViewsVisibility(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
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

    .line 159
    const-string v1, "tweaks_hide_qs_statusbar_icons_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1c

    move v2, v3

    :cond_1c
    sput-boolean v2, Lcom/android/mwilky/Renovate;->mHideQsStatusbarIconView:Z

    .line 160
    return-void
.end method

.method public static setQuickQsPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_qs_pulldown_list"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mQuickQsPulldown:I

    .line 154
    return-void
.end method

.method public static setScrambleKeypad(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
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

    .line 72
    return-void
.end method

.method public static setShowQsDetail(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
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

    .line 125
    return-void
.end method

.method public static setSmartPulldown(Landroid/content/Context;)V
    .registers 4
    .param p0, "Context"    # Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_smart_pulldown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/mwilky/Renovate;->mSmartPulldown:I

    .line 148
    return-void
.end method
