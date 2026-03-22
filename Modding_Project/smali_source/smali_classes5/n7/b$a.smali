.class Ln7/b$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@23.0.0"

# interfaces
.implements Ln7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/b;->f(Ljava/lang/String;Ln7/a$b;)Ln7/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ln7/b;


# direct methods
.method constructor <init>(Ln7/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln7/b$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ln7/b$a;->b:Ln7/b;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
