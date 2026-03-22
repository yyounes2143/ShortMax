.class public Lb8/c;
.super Ljava/lang/Object;
.source "DisabledBreadcrumbSource.java"

# interfaces
.implements Lb8/b;


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


# virtual methods
.method public a(Lb8/a;)V
    .locals 1
    .param p1    # Lb8/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "Could not register handler for breadcrumbs events."

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lz7/g;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
