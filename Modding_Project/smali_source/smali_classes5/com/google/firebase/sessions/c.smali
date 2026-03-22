.class public final Lcom/google/firebase/sessions/c;
.super Ljava/lang/Object;
.source "FirebaseSessionsComponent_MainModule_Companion_ApplicationInfoFactory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lj9/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lcom/google/firebase/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lls/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lcom/google/firebase/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/sessions/c;->a:Lls/a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/google/firebase/f;)Lj9/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/b$b;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/sessions/b$b$a;->e(Lcom/google/firebase/f;)Lj9/b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ll9/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lj9/b;

    .line 12
    .line 13
    return-object p0
.end method

.method public static b(Lls/a;)Lcom/google/firebase/sessions/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lcom/google/firebase/f;",
            ">;)",
            "Lcom/google/firebase/sessions/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/c;-><init>(Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public c()Lj9/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/c;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/f;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/firebase/sessions/c;->a(Lcom/google/firebase/f;)Lj9/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/sessions/c;->c()Lj9/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
