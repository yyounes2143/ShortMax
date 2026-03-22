.class public interface abstract Lcom/unity3d/services/core/properties/Session;
.super Ljava/lang/Object;
.source "Session.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/properties/Session$Default;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Default:Lcom/unity3d/services/core/properties/Session$Default;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/unity3d/services/core/properties/Session$Default;->$$INSTANCE:Lcom/unity3d/services/core/properties/Session$Default;

    .line 2
    .line 3
    sput-object v0, Lcom/unity3d/services/core/properties/Session;->Default:Lcom/unity3d/services/core/properties/Session$Default;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
