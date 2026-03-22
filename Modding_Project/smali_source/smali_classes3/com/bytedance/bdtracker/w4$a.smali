.class public final Lcom/bytedance/bdtracker/w4$a;
.super Lcom/bytedance/bdtracker/j4;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bdtracker/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/bdtracker/j4<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/bdtracker/j4;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    check-cast p1, Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "ug_install_settings_pref"

    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
