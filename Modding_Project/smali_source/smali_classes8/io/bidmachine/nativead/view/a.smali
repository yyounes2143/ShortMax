.class public final synthetic Lio/bidmachine/nativead/view/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhr/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/bidmachine/nativead/view/a;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lio/bidmachine/nativead/view/a;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/nativead/view/a;->a:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lio/bidmachine/nativead/view/a;->b:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/nativead/view/MediaView;->b(IZ)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
