.class public final synthetic Lvb/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/inmobi/sdk/SdkInitializationListener;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/sdk/SdkInitializationListener;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvb/d;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lvb/d;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lvb/d;->c:Lcom/inmobi/sdk/SdkInitializationListener;

    .line 9
    .line 10
    iput-wide p4, p0, Lvb/d;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvb/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lvb/d;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lvb/d;->c:Lcom/inmobi/sdk/SdkInitializationListener;

    .line 6
    .line 7
    iget-wide v3, p0, Lvb/d;->d:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/inmobi/sdk/InMobiSdk;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/sdk/SdkInitializationListener;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
