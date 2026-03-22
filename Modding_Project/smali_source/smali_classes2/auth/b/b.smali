.class public final Lauth/b/b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic d:Lka/i;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/hades/aar/auth/base/AuthType;

.field public final synthetic g:Lcom/hades/aar/auth/base/AuthUser;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lka/j;


# direct methods
.method public constructor <init>(Lka/i;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lauth/b/b;->d:Lka/i;

    .line 2
    .line 3
    iput-object p2, p0, Lauth/b/b;->e:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lauth/b/b;->f:Lcom/hades/aar/auth/base/AuthType;

    .line 6
    .line 7
    iput-object p4, p0, Lauth/b/b;->g:Lcom/hades/aar/auth/base/AuthUser;

    .line 8
    .line 9
    iput-object p5, p0, Lauth/b/b;->h:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lauth/b/b;->i:Lka/j;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    .line 2
    .line 3
    iget-object v0, p0, Lauth/b/b;->d:Lka/i;

    .line 4
    .line 5
    iget-object v1, p0, Lauth/b/b;->e:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v2, p0, Lauth/b/b;->f:Lcom/hades/aar/auth/base/AuthType;

    .line 8
    .line 9
    iget-object v3, p0, Lauth/b/b;->g:Lcom/hades/aar/auth/base/AuthUser;

    .line 10
    .line 11
    iget-object v4, p0, Lauth/b/b;->h:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, p0, Lauth/b/b;->i:Lka/j;

    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Lka/i;->h(Lka/i;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method
