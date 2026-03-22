.class public final Lauth/b/a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic d:Lka/i;

.field public final synthetic e:Lcom/hades/aar/auth/base/AuthType;

.field public final synthetic f:Lka/j;

.field public final synthetic g:Landroid/app/Activity;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/hades/aar/auth/base/AuthUser;


# direct methods
.method public constructor <init>(Lka/i;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lauth/b/a;->d:Lka/i;

    .line 2
    .line 3
    iput-object p3, p0, Lauth/b/a;->e:Lcom/hades/aar/auth/base/AuthType;

    .line 4
    .line 5
    iput-object p6, p0, Lauth/b/a;->f:Lka/j;

    .line 6
    .line 7
    iput-object p2, p0, Lauth/b/a;->g:Landroid/app/Activity;

    .line 8
    .line 9
    iput-object p5, p0, Lauth/b/a;->h:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lauth/b/a;->i:Lcom/hades/aar/auth/base/AuthUser;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/google/firebase/auth/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/auth/g;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v3, v0, Lauth/b/a;->d:Lka/i;

    .line 21
    .line 22
    iget-object v4, v0, Lauth/b/a;->g:Landroid/app/Activity;

    .line 23
    .line 24
    iget-object v5, v0, Lauth/b/a;->e:Lcom/hades/aar/auth/base/AuthType;

    .line 25
    .line 26
    iget-object v6, v0, Lauth/b/a;->h:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/firebase/auth/g;->c()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v8, v0, Lauth/b/a;->i:Lcom/hades/aar/auth/base/AuthUser;

    .line 36
    .line 37
    iget-object v10, v0, Lauth/b/a;->f:Lka/j;

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    invoke-virtual/range {v3 .. v10}, Lka/i;->d(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/auth/base/AuthUser;ZLka/j;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iget-object v11, v0, Lauth/b/a;->d:Lka/i;

    .line 45
    .line 46
    iget-object v12, v0, Lauth/b/a;->e:Lcom/hades/aar/auth/base/AuthType;

    .line 47
    .line 48
    iget-object v1, v0, Lauth/b/a;->f:Lka/j;

    .line 49
    .line 50
    const/16 v18, 0x14

    .line 51
    .line 52
    const/16 v19, 0x0

    .line 53
    .line 54
    const/4 v13, 0x1

    .line 55
    const/4 v14, 0x0

    .line 56
    const-string/jumbo v15, "token is null"

    .line 57
    .line 58
    .line 59
    const/16 v16, 0x0

    .line 60
    .line 61
    move-object/from16 v17, v1

    .line 62
    .line 63
    invoke-static/range {v11 .. v19}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object v1
.end method
