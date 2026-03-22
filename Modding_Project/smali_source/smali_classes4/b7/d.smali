.class public interface abstract Lb7/d;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final a:Lb7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb7/l0;

    .line 2
    .line 3
    invoke-direct {v0}, Lb7/l0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb7/d;->a:Lb7/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lb7/m;
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract uptimeMillis()J
.end method
