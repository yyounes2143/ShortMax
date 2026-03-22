.class public final La7/p$b;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements La7/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:La7/s;

.field private b:La7/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lh7/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/l<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La7/s;

    .line 5
    .line 6
    invoke-direct {v0}, La7/s;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La7/p$b;->a:La7/s;

    .line 10
    .line 11
    const/16 v0, 0x1f40

    .line 12
    .line 13
    iput v0, p0, La7/p$b;->e:I

    .line 14
    .line 15
    iput v0, p0, La7/p$b;->f:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()La7/p;
    .locals 10

    .line 1
    new-instance v9, La7/p;

    .line 2
    .line 3
    iget-object v1, p0, La7/p$b;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, La7/p$b;->e:I

    .line 6
    .line 7
    iget v3, p0, La7/p$b;->f:I

    .line 8
    .line 9
    iget-boolean v4, p0, La7/p$b;->g:Z

    .line 10
    .line 11
    iget-object v5, p0, La7/p$b;->a:La7/s;

    .line 12
    .line 13
    iget-object v6, p0, La7/p$b;->c:Lh7/l;

    .line 14
    .line 15
    iget-boolean v7, p0, La7/p$b;->h:Z

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v0, v9

    .line 19
    invoke-direct/range {v0 .. v8}, La7/p;-><init>(Ljava/lang/String;IIZLa7/s;Lh7/l;ZLa7/p$a;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, La7/p$b;->b:La7/y;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v9, v0}, La7/e;->c(La7/y;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v9
.end method

.method public b(Ljava/lang/String;)La7/p$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, La7/p$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic createDataSource()La7/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, La7/p$b;->a()La7/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
