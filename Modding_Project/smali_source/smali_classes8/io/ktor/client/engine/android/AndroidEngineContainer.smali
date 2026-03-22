.class public final Lio/ktor/client/engine/android/AndroidEngineContainer;
.super Ljava/lang/Object;
.source "Android.kt"

# interfaces
.implements Lmr/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lor/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lor/e<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lpr/a;->a:Lpr/a;

    .line 5
    .line 6
    iput-object v0, p0, Lio/ktor/client/engine/android/AndroidEngineContainer;->a:Lor/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lor/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lor/e<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/engine/android/AndroidEngineContainer;->a:Lor/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Android"

    .line 2
    .line 3
    return-object v0
.end method
