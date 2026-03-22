.class public abstract Ldm/a;
.super Ljava/lang/Object;
.source "BaseVersionWrapper.java"

# interfaces
.implements Ldm/b;


# instance fields
.field private final a:I

.field private final b:Llr/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILlr/a;)V
    .locals 0
    .param p2    # Llr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ldm/a;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Ldm/a;->b:Llr/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Ldm/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Llr/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ldm/a;->b:Llr/a;

    .line 2
    .line 3
    return-object v0
.end method
