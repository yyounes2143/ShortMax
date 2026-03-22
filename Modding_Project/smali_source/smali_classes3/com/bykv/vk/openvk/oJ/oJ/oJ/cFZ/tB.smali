.class public Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ZYk:I = 0x4

.field private static oJ:Z = false

.field private static tB:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static ZYk()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->oJ:Z

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    invoke-static {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->oJ(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static oJ()V
    .locals 1

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->oJ:Z

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->oJ(I)V

    return-void
.end method

.method public static oJ(I)V
    .locals 0

    .line 2
    sput p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->ZYk:I

    return-void
.end method

.method public static oJ(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->tB:Ljava/lang/String;

    return-void
.end method
