.class public final synthetic Lsg/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic b:I

.field public final synthetic c:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;ILcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsg/b;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 5
    .line 6
    iput p2, p0, Lsg/b;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lsg/b;->c:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;

    .line 9
    .line 10
    iput-object p4, p0, Lsg/b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lsg/b;->a:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    iget v1, p0, Lsg/b;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lsg/b;->c:Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;

    .line 6
    .line 7
    iget-object v3, p0, Lsg/b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;->i(Lkotlin/jvm/internal/Ref$IntRef;ILcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
