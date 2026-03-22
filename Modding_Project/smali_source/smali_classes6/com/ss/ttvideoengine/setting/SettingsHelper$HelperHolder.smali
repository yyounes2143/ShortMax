.class Lcom/ss/ttvideoengine/setting/SettingsHelper$HelperHolder;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/setting/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelperHolder"
.end annotation


# static fields
.field private static final Instance:Lcom/ss/ttvideoengine/setting/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;-><init>(Lcom/ss/ttvideoengine/setting/SettingsHelper$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/setting/SettingsHelper$HelperHolder;->Instance:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100()Lcom/ss/ttvideoengine/setting/SettingsHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/setting/SettingsHelper$HelperHolder;->Instance:Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    return-object v0
.end method
