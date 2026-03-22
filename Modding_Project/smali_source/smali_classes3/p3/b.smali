.class public final synthetic Lp3/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lokhttp3/Call;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Call;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp3/b;->a:Lokhttp3/Call;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/b;->a:Lokhttp3/Call;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/backends/okhttp3/a$c;->e(Lokhttp3/Call;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
