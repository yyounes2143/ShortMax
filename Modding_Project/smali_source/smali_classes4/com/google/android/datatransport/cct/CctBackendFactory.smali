.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "CctBackendFactory.java"

# interfaces
.implements Ld5/c;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


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
.method public create(Ld5/f;)Ld5/k;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Ld5/f;->b()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ld5/f;->e()Lm5/a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Ld5/f;->d()Lm5/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/datatransport/cct/d;-><init>(Landroid/content/Context;Lm5/a;Lm5/a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
