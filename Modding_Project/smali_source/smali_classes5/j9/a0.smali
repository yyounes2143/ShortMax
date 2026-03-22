.class public final Lj9/a0;
.super Ljava/lang/Object;
.source "SessionDataSerializer_Factory.java"

# interfaces
.implements Ll9/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/b<",
        "Lcom/google/firebase/sessions/SessionDataSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lls/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls/a<",
            "Lj9/f0;",
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
            "Lj9/f0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj9/a0;->a:Lls/a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lls/a;)Lj9/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls/a<",
            "Lj9/f0;",
            ">;)",
            "Lj9/a0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lj9/a0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj9/a0;-><init>(Lls/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Lj9/f0;)Lcom/google/firebase/sessions/SessionDataSerializer;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/SessionDataSerializer;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/SessionDataSerializer;-><init>(Lj9/f0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/sessions/SessionDataSerializer;
    .locals 1

    .line 1
    iget-object v0, p0, Lj9/a0;->a:Lls/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lls/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj9/f0;

    .line 8
    .line 9
    invoke-static {v0}, Lj9/a0;->c(Lj9/f0;)Lcom/google/firebase/sessions/SessionDataSerializer;

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
    invoke-virtual {p0}, Lj9/a0;->b()Lcom/google/firebase/sessions/SessionDataSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
