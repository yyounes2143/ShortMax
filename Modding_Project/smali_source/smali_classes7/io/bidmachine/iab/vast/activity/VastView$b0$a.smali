.class Lio/bidmachine/iab/vast/activity/VastView$b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/activity/VastView$b0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView$b0;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView$b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$b0$a;->a:Lio/bidmachine/iab/vast/activity/VastView$b0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b0$a;->a:Lio/bidmachine/iab/vast/activity/VastView$b0;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView$b0;->a(Lio/bidmachine/iab/vast/activity/VastView$b0;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/vast/activity/VastView$b0;->d(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
