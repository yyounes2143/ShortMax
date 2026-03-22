.class public final enum Lio/bidmachine/banner/BannerSize;
.super Ljava/lang/Enum;
.source "BannerSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/banner/BannerSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_300x250:Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_320x50:Lio/bidmachine/banner/BannerSize;

.field public static final enum Size_728x90:Lio/bidmachine/banner/BannerSize;


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method private static synthetic $values()[Lio/bidmachine/banner/BannerSize;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/banner/BannerSize;->Size_728x90:Lio/bidmachine/banner/BannerSize;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lio/bidmachine/banner/BannerSize;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    const/16 v1, 0x140

    .line 4
    .line 5
    const/16 v2, 0x32

    .line 6
    .line 7
    const-string v3, "Size_320x50"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    .line 14
    .line 15
    new-instance v0, Lio/bidmachine/banner/BannerSize;

    .line 16
    .line 17
    const/16 v1, 0x12c

    .line 18
    .line 19
    const/16 v2, 0xfa

    .line 20
    .line 21
    const-string v3, "Size_300x250"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    .line 28
    .line 29
    new-instance v0, Lio/bidmachine/banner/BannerSize;

    .line 30
    .line 31
    const/16 v1, 0x2d8

    .line 32
    .line 33
    const/16 v2, 0x5a

    .line 34
    .line 35
    const-string v3, "Size_728x90"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/banner/BannerSize;-><init>(Ljava/lang/String;III)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lio/bidmachine/banner/BannerSize;->Size_728x90:Lio/bidmachine/banner/BannerSize;

    .line 42
    .line 43
    invoke-static {}, Lio/bidmachine/banner/BannerSize;->$values()[Lio/bidmachine/banner/BannerSize;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lio/bidmachine/banner/BannerSize;->$VALUES:[Lio/bidmachine/banner/BannerSize;

    .line 48
    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/bidmachine/banner/BannerSize;->width:I

    .line 5
    .line 6
    iput p4, p0, Lio/bidmachine/banner/BannerSize;->height:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/banner/BannerSize;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/banner/BannerSize;->$VALUES:[Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/banner/BannerSize;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/banner/BannerSize;

    .line 8
    .line 9
    return-object v0
.end method
