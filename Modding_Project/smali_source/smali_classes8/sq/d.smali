.class public Lsq/d;
.super Lsq/b;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Date;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lsq/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsq/b;-><init>()V

    .line 3
    invoke-static {p1}, Lsq/m;->b(I)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lsq/d;->a:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)Z
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lsq/d;->a:Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lsq/e;->h(Ljava/io/File;Ljava/util/Date;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
