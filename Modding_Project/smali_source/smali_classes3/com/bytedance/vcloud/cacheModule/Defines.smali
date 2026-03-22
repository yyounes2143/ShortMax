.class public Lcom/bytedance/vcloud/cacheModule/Defines;
.super Ljava/lang/Object;
.source "Defines.java"


# static fields
.field public static final ErrorCodeCanceled:I = -0x3ec

.field public static final ErrorCodeIsInvalidRequestInfo:I = -0xfa0

.field public static final ErrorCodeNone:I


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

.method public static getErrorCode(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, -0xfa0

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, -0x3ec

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/bytedance/vcloud/cacheModule/CacheModule;->getNativeErrorMsg(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_1
    const-string p0, "ErrorCodeCanceled"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    const-string p0, "ErrorCodeIsInvalidRequestInfo"

    .line 22
    .line 23
    return-object p0
.end method

.method public static mkTag(IIII)I
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    or-int/2addr p0, p1

    .line 4
    shl-int/lit8 p1, p2, 0x10

    .line 5
    .line 6
    or-int/2addr p0, p1

    .line 7
    shl-int/lit8 p1, p3, 0x18

    .line 8
    .line 9
    or-int/2addr p0, p1

    .line 10
    neg-int p0, p0

    .line 11
    return p0
.end method
