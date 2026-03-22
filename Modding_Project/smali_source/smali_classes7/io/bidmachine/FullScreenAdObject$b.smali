.class abstract Lio/bidmachine/FullScreenAdObject$b;
.super Ljava/lang/Object;
.source "FullScreenAdObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/FullScreenAdObject$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/FullScreenAdObject$b;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/core/g;->g(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method abstract c()V
.end method

.method d(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/core/g;->Y(Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject$b;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
