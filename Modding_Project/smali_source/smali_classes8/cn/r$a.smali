.class public interface abstract Lcn/r$a;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lcn/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/r$a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcn/r$a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcn/r$a;->a:Lcn/r$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
