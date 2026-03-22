.class public Lcom/ss/mediakit/vcnlib/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# static fields
.field private static gContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/mediakit/vcnlib/NetUtils;->gContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/mediakit/vcnlib/NetUtils;->gContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sput-object p0, Lcom/ss/mediakit/vcnlib/NetUtils;->gContext:Landroid/content/Context;

    .line 6
    .line 7
    :cond_0
    return-void
.end method
