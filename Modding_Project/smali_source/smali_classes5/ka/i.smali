.class public abstract Lka/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lka/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public a:Z

.field public b:Lka/b;

.field public c:Lcom/google/firebase/auth/FirebaseAuth;


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

.method public static final e(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V
    .locals 9

    .line 1
    const/16 v7, 0x14

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "Request cancelled"

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v6, p2

    .line 12
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final f(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;Ljava/lang/Exception;)V
    .locals 10

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    const/16 v8, 0x14

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v7, p2

    .line 19
    invoke-static/range {v1 .. v9}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lka/i;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lka/i;->c(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final l(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V
    .locals 9

    .line 1
    const/16 v7, 0x14

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "Request cancelled"

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v6, p2

    .line 12
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final m(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;Ljava/lang/Exception;)V
    .locals 10

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    const/16 v8, 0x14

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v7, p2

    .line 19
    invoke-static/range {v1 .. v9}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final n(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p8, :cond_6

    .line 2
    .line 3
    and-int/lit8 p8, p7, 0x4

    .line 4
    .line 5
    if-eqz p8, :cond_0

    .line 6
    .line 7
    const/4 p3, -0x1

    .line 8
    :cond_0
    and-int/lit8 p7, p7, 0x10

    .line 9
    .line 10
    if-eqz p7, :cond_1

    .line 11
    .line 12
    const/4 p5, 0x1

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string p7, "authType"

    .line 17
    .line 18
    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p7, p0, Lka/i;->a:Z

    .line 22
    .line 23
    if-nez p7, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-eqz p5, :cond_3

    .line 27
    .line 28
    const/4 p5, 0x0

    .line 29
    iput-boolean p5, p0, Lka/i;->a:Z

    .line 30
    .line 31
    :cond_3
    iget-object p5, p0, Lka/i;->b:Lka/b;

    .line 32
    .line 33
    if-eqz p5, :cond_4

    .line 34
    .line 35
    invoke-interface {p5}, Lka/b;->a()V

    .line 36
    .line 37
    .line 38
    :cond_4
    if-eqz p6, :cond_5

    .line 39
    .line 40
    invoke-interface {p0}, Lka/a;->tag()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p7, "auth failed -> authType("

    .line 47
    .line 48
    invoke-direct {p5, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p7, ") firebaseError("

    .line 55
    .line 56
    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p7, ") errMsg("

    .line 63
    .line 64
    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const/16 p7, 0x29

    .line 71
    .line 72
    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p5

    .line 79
    invoke-interface {p6, p0, p5}, Lka/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p6, p1, p2, p3, p4}, Lka/j;->b(Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_0
    return-void

    .line 86
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 87
    .line 88
    const-string p1, "Super calls with default arguments not supported in this target, function: handleAuthFailed"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lka/i;->a:Z

    .line 3
    .line 4
    iget-object v0, p0, Lka/i;->b:Lka/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lka/b;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/google/firebase/auth/AuthCredential;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V
    .locals 12

    .line 1
    move-object v9, p0

    .line 2
    move-object v7, p2

    .line 3
    move-object v0, p3

    .line 4
    move-object/from16 v8, p6

    .line 5
    .line 6
    const-string v1, "activity"

    .line 7
    .line 8
    move-object v2, p1

    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "authType"

    .line 13
    .line 14
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "credential"

    .line 18
    .line 19
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v9, Lka/i;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const/16 v10, 0x14

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v4, "mFirebaseAuth is null"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p2

    .line 36
    move-object/from16 v6, p6

    .line 37
    .line 38
    move v7, v10

    .line 39
    move-object v8, v11

    .line 40
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-boolean v3, v9, Lka/i;->a:Z

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-virtual {v1, p3}, Lcom/google/firebase/auth/FirebaseAuth;->k(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    if-eqz v10, :cond_2

    .line 54
    .line 55
    new-instance v11, Lauth/b/b;

    .line 56
    .line 57
    move-object v0, v11

    .line 58
    move-object v1, p0

    .line 59
    move-object v2, p1

    .line 60
    move-object v3, p2

    .line 61
    move-object/from16 v4, p4

    .line 62
    .line 63
    move-object/from16 v5, p5

    .line 64
    .line 65
    move-object/from16 v6, p6

    .line 66
    .line 67
    invoke-direct/range {v0 .. v6}, Lauth/b/b;-><init>(Lka/i;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lka/c;

    .line 71
    .line 72
    invoke-direct {v0, v11}, Lka/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    new-instance v1, Lka/d;

    .line 82
    .line 83
    invoke-direct {v1, p0, p2, v8}, Lka/d;-><init>(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    new-instance v1, Lka/e;

    .line 93
    .line 94
    invoke-direct {v1, p0, p2, v8}, Lka/e;-><init>(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
.end method

.method public final c(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lka/i;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lka/i;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/FirebaseUser;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->a(Z)Lcom/google/android/gms/tasks/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v8, Lauth/b/a;

    .line 24
    .line 25
    move-object v1, v8

    .line 26
    move-object v2, p0

    .line 27
    move-object v3, p1

    .line 28
    move-object v4, p2

    .line 29
    move-object v5, p3

    .line 30
    move-object v6, p4

    .line 31
    move-object v7, p5

    .line 32
    invoke-direct/range {v1 .. v7}, Lauth/b/a;-><init>(Lka/i;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lka/f;

    .line 36
    .line 37
    invoke-direct {p1, v8}, Lka/f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p3, Lka/g;

    .line 45
    .line 46
    invoke-direct {p3, p0, p2, p5}, Lka/g;-><init>(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p3, Lka/h;

    .line 54
    .line 55
    invoke-direct {p3, p0, p2, p5}, Lka/h;-><init>(Lka/i;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/16 v7, 0x14

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v2, 0x1

    .line 66
    const/4 v3, 0x0

    .line 67
    const-string v4, "firebaseUser is null"

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    move-object v0, p0

    .line 71
    move-object v1, p2

    .line 72
    move-object v6, p5

    .line 73
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method

.method public final d(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/auth/base/AuthUser;ZLka/j;)V
    .locals 6

    .line 1
    const-string v0, "authType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "firebaseToken"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lka/i;->a:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    if-eqz p6, :cond_1

    .line 17
    .line 18
    const/4 p6, 0x0

    .line 19
    iput-boolean p6, p0, Lka/i;->a:Z

    .line 20
    .line 21
    :cond_1
    iget-object p6, p0, Lka/i;->b:Lka/b;

    .line 22
    .line 23
    if-eqz p6, :cond_2

    .line 24
    .line 25
    invoke-interface {p6}, Lka/b;->a()V

    .line 26
    .line 27
    .line 28
    :cond_2
    if-eqz p7, :cond_3

    .line 29
    .line 30
    move-object v0, p7

    .line 31
    move-object v1, p1

    .line 32
    move-object v2, p2

    .line 33
    move-object v3, p3

    .line 34
    move-object v4, p4

    .line 35
    move-object v5, p5

    .line 36
    invoke-interface/range {v0 .. v5}, Lka/j;->c(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/auth/base/AuthUser;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public i(Landroid/app/Activity;Lcom/google/firebase/auth/AuthCredential;Lka/j;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p3, "activity"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "authCredential"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lka/i;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public j(Landroid/app/Activity;Ljava/lang/String;Lka/j;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p3, "activity"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "otp"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lka/i;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public k(Landroid/app/Activity;ZLka/j;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lka/i;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public p(Lka/b;)V
    .locals 2
    .param p1    # Lka/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BaseAuth init start"

    .line 2
    .line 3
    const-string v1, "FirebaseAuthManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lka/i;->b:Lka/b;

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lka/i;->c:Lcom/google/firebase/auth/FirebaseAuth;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    :catch_0
    const-string p1, "BaseAuth init end"

    .line 17
    .line 18
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lka/i;->a:Z

    .line 3
    .line 4
    iget-object v0, p0, Lka/i;->b:Lka/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lka/b;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lka/i;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 13
    .line 14
    iput-object v0, p0, Lka/i;->b:Lka/b;

    .line 15
    .line 16
    return-void
.end method

.method public r(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lka/j;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p4, "activity"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "areaCode"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "phoneNumber"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lka/i;->a()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
