.class public final synthetic Lt3/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt3/y;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lt3/y;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt3/x;->a:Lt3/y;

    .line 5
    .line 6
    iput-object p2, p0, Lt3/x;->b:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt3/x;->a:Lt3/y;

    .line 2
    .line 3
    iget-object v1, p0, Lt3/x;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lt3/y;->a(Lt3/y;Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
