.class public Lio/bidmachine/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final IMAGE_MIME_TYPES:[Ljava/lang/String;

.field public static final URL_MACROS_AUCTION_PRICE:Ljava/lang/String; = "AUCTION_PRICE"

.field public static final URL_MACROS_AUCTION_SEAT_ID:Ljava/lang/String; = "AUCTION_SEAT_ID"

.field public static final URL_MACROS_BM_ACTION_CODE:Ljava/lang/String; = "BM_ACTION_CODE"

.field public static final URL_MACROS_BM_ACTION_FINISH:Ljava/lang/String; = "BM_ACTION_FINISH"

.field public static final URL_MACROS_BM_ACTION_START:Ljava/lang/String; = "BM_ACTION_START"

.field public static final URL_MACROS_BM_ERROR_REASON:Ljava/lang/String; = "BM_ERROR_REASON"

.field public static final URL_MACROS_BM_EVENT_CODE:Ljava/lang/String; = "BM_EVENT_CODE"

.field public static final VIDEO_LINEARITY:I = 0x1

.field public static final VIDEO_MAXBITR:I = 0x1000

.field public static final VIDEO_MAXDUR:I = 0x1e

.field public static final VIDEO_MIME_TYPES:[Ljava/lang/String;

.field public static final VIDEO_MINBITR:I = 0x38

.field public static final VIDEO_MINDUR:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "video/mp4"

    .line 2
    .line 3
    const-string v1, "video/3gpp"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lio/bidmachine/Constants;->VIDEO_MIME_TYPES:[Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "image/gif"

    .line 12
    .line 13
    const-string v1, "image/png"

    .line 14
    .line 15
    const-string v2, "image/jpeg"

    .line 16
    .line 17
    const-string v3, "image/jpg"

    .line 18
    .line 19
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:[Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
