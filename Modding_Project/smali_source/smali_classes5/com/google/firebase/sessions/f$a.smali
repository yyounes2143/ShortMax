.class final Lcom/google/firebase/sessions/f$a;
.super Ljava/lang/Object;
.source "FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/firebase/sessions/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/sessions/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/sessions/f$a;->a:Lcom/google/firebase/sessions/f;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a()Lcom/google/firebase/sessions/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/f$a;->a:Lcom/google/firebase/sessions/f;

    .line 2
    .line 3
    return-object v0
.end method
