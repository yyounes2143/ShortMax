.class Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter$SingleBuilder;
.super Ljava/lang/Object;
.source "PreloadLoadProgressCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleBuilder"
.end annotation


# static fields
.field private static center:Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;-><init>(Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter$SingleBuilder;->center:Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

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

.method static synthetic access$100()Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter$SingleBuilder;->center:Lcom/ss/ttvideoengine/preload/PreloadLoadProgressCenter;

    .line 2
    .line 3
    return-object v0
.end method
