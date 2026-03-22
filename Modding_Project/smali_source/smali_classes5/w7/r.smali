.class public final synthetic Lw7/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map$Entry;

.field public final synthetic b:Lt8/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lt8/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw7/r;->a:Ljava/util/Map$Entry;

    .line 5
    .line 6
    iput-object p2, p0, Lw7/r;->b:Lt8/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw7/r;->a:Ljava/util/Map$Entry;

    .line 2
    .line 3
    iget-object v1, p0, Lw7/r;->b:Lt8/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw7/s;->c(Ljava/util/Map$Entry;Lt8/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
