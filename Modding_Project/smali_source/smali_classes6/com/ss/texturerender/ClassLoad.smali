.class Lcom/ss/texturerender/ClassLoad;
.super Ljava/lang/Object;
.source "ClassLoad.java"


# annotations
.annotation build Lcom/ss/texturerender/JNINamespace;
    value = "UTILS"
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

.method static getClassLoader()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/ss/texturerender/CalledByNative;
    .end annotation

    .line 1
    const-class v0, Lcom/ss/texturerender/ClassLoad;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
