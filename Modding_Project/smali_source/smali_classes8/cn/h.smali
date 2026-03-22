.class public interface abstract Lcn/h;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final a:Lcn/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/h;->a:Lcn/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract currentTimeMillis()J
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract nanoTime()J
.end method

.method public abstract uptimeMillis()J
.end method
