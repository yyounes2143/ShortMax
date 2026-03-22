.class public Lt7/b;
.super Ljava/lang/Object;
.source "PlayIntegrityAppCheckProviderFactory.java"

# interfaces
.implements Lp7/b;


# static fields
.field private static final a:Lt7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt7/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lt7/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt7/b;->a:Lt7/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lt7/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lt7/b;->a:Lt7/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/f;)Lp7/a;
    .locals 1
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lu7/i;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lp7/a;

    .line 8
    .line 9
    return-object p1
.end method
