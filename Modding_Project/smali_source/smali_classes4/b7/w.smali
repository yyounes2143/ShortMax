.class public final synthetic Lb7/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb7/x;

.field public final synthetic b:Lb7/x$c;


# direct methods
.method public synthetic constructor <init>(Lb7/x;Lb7/x$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb7/w;->a:Lb7/x;

    .line 5
    .line 6
    iput-object p2, p0, Lb7/w;->b:Lb7/x$c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb7/w;->a:Lb7/x;

    .line 2
    .line 3
    iget-object v1, p0, Lb7/w;->b:Lb7/x$c;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lb7/x;->a(Lb7/x;Lb7/x$c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
