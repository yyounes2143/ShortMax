.class public final synthetic Lcom/google/firebase/auth/s;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"

# interfaces
.implements Lw7/g;


# instance fields
.field private synthetic a:Lw7/a0;

.field private synthetic b:Lw7/a0;

.field private synthetic c:Lw7/a0;

.field private synthetic d:Lw7/a0;

.field private synthetic e:Lw7/a0;


# direct methods
.method public synthetic constructor <init>(Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/auth/s;->a:Lw7/a0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/auth/s;->b:Lw7/a0;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/firebase/auth/s;->c:Lw7/a0;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/firebase/auth/s;->d:Lw7/a0;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/firebase/auth/s;->e:Lw7/a0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lw7/d;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/s;->a:Lw7/a0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/auth/s;->b:Lw7/a0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/auth/s;->c:Lw7/a0;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/firebase/auth/s;->d:Lw7/a0;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/firebase/auth/s;->e:Lw7/a0;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/auth/FirebaseAuthRegistrar;->lambda$getComponents$0(Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;Lw7/d;)Lcom/google/firebase/auth/FirebaseAuth;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
