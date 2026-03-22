.class public final enum Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
.super Ljava/lang/Enum;
.source "CodecStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

.field public static final enum H264_HARDWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

.field public static final enum H264_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

.field public static final enum h265_HARDWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

.field public static final enum h265_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

.field public static final enum h266_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;


# instance fields
.field public final decoder:I

.field public final encodeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 2
    .line 3
    const-string v1, "h265_HARDWARE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "h265"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h265_HARDWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 13
    .line 14
    new-instance v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 15
    .line 16
    const-string v5, "h265_SOFTWARE"

    .line 17
    .line 18
    invoke-direct {v1, v5, v3, v2, v4}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h265_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 22
    .line 23
    new-instance v4, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const-string v6, "h266"

    .line 27
    .line 28
    const-string v7, "h266_SOFTWARE"

    .line 29
    .line 30
    invoke-direct {v4, v7, v5, v2, v6}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v4, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h266_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 34
    .line 35
    new-instance v5, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 36
    .line 37
    const-string v6, "H264_HARDWARE"

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const-string v8, "h264"

    .line 41
    .line 42
    invoke-direct {v5, v6, v7, v3, v8}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v5, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->H264_HARDWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 46
    .line 47
    new-instance v3, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 48
    .line 49
    const-string v6, "H264_SOFTWARE"

    .line 50
    .line 51
    const/4 v7, 0x4

    .line 52
    invoke-direct {v3, v6, v7, v2, v8}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sput-object v3, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->H264_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 56
    .line 57
    filled-new-array {v0, v1, v4, v5, v3}, [Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->$VALUES:[Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 62
    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->decoder:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
    .locals 1

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->$VALUES:[Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 8
    .line 9
    return-object v0
.end method
