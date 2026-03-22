.class final Lcom/pandora/vod/VodSDK$b;
.super Ljava/lang/Object;
.source "VodSDK.java"

# interfaces
.implements Lcom/bytedance/vodsetting/SettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/vod/VodSDK;->initLog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onNotify(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string/jumbo p2, "vod"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/pandora/vod/a;->b()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
