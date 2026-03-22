.class public interface abstract Lq0/c$a;
.super Ljava/lang/Object;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/c$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lq0/c$a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lq0/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lq0/c$a$a;->a:Lq0/c$a$a;

    .line 2
    .line 3
    sput-object v0, Lq0/c$a;->a:Lq0/c$a$a;

    .line 4
    .line 5
    new-instance v0, Lq0/b$a;

    .line 6
    .line 7
    invoke-direct {v0}, Lq0/b$a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lq0/c$a;->b:Lq0/c$a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract a(Lq0/d;Lm0/g;)Lq0/c;
    .param p1    # Lq0/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
