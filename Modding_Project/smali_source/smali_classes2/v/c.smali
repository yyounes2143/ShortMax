.class public final synthetic Lv/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/GraphRequest$d;


# instance fields
.field public final synthetic a:Lja/b;

.field public final synthetic b:Lka/j;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lcom/google/firebase/auth/AuthCredential;

.field public final synthetic e:Lcom/facebook/AccessToken;


# direct methods
.method public synthetic constructor <init>(Lja/b;Lka/j;Landroid/app/Activity;Lcom/google/firebase/auth/AuthCredential;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv/c;->a:Lja/b;

    .line 5
    .line 6
    iput-object p2, p0, Lv/c;->b:Lka/j;

    .line 7
    .line 8
    iput-object p3, p0, Lv/c;->c:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p4, p0, Lv/c;->d:Lcom/google/firebase/auth/AuthCredential;

    .line 11
    .line 12
    iput-object p5, p0, Lv/c;->e:Lcom/facebook/AccessToken;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lcom/facebook/b0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lv/c;->a:Lja/b;

    .line 2
    .line 3
    iget-object v1, p0, Lv/c;->b:Lka/j;

    .line 4
    .line 5
    iget-object v2, p0, Lv/c;->c:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lv/c;->d:Lcom/google/firebase/auth/AuthCredential;

    .line 8
    .line 9
    iget-object v4, p0, Lv/c;->e:Lcom/facebook/AccessToken;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lv/d;->c(Lja/b;Lka/j;Landroid/app/Activity;Lcom/google/firebase/auth/AuthCredential;Lcom/facebook/AccessToken;Lorg/json/JSONObject;Lcom/facebook/b0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
