.class public Lcom/bytedance/applog/exception/AppCrashType;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALL:I = 0x7fffffff

.field public static final JAVA:I = 0x1


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

.method public static hasCrashType(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public static hasJavaCrashType(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/bytedance/applog/exception/AppCrashType;->hasCrashType(II)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method
