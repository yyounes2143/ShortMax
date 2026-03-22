.class public Lcom/google/firebase/auth/m;
.super Lcom/google/firebase/auth/j;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/firebase/auth/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/google/firebase/auth/n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/m;->b:Lcom/google/firebase/auth/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/m;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/m;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
