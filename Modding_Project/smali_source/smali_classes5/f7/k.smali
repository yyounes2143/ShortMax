.class public final synthetic Lf7/k;
.super Ljava/lang/Object;
.source "com.google.android.play:review@@2.0.2"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lf7/t;


# direct methods
.method public synthetic constructor <init>(Lf7/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf7/k;->a:Lf7/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf7/k;->a:Lf7/t;

    .line 2
    .line 3
    invoke-static {v0}, Lf7/t;->j(Lf7/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
