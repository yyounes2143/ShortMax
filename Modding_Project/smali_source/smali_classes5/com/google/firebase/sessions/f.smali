.class public final Lcom/google/firebase/sessions/f;
.super Ljava/lang/Object;
.source "FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lj9/m0;",
        ">;"
    }
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

.method public static a()Lcom/google/firebase/sessions/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/f$a;->a()Lcom/google/firebase/sessions/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static c()Lj9/m0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/b$b;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/sessions/b$b$a;->p()Lj9/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ll9/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lj9/m0;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public b()Lj9/m0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/f;->c()Lj9/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/sessions/f;->b()Lj9/m0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
