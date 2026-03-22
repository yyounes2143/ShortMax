.class public interface abstract Lpn/c$b;
.super Ljava/lang/Object;
.source "LoudnessCodecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpn/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lpn/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpn/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lpn/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lpn/c$b;->a:Lpn/c$b;

    .line 7
    .line 8
    return-void
.end method

.method private static synthetic a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic c(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0}, Lpn/c$b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public abstract b(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
