.class Lu0/c$a;
.super Le1/c;
.source "DropShadowKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0/c;->e(Le1/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le1/c<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Le1/c;

.field final synthetic e:Lu0/c;


# direct methods
.method constructor <init>(Lu0/c;Le1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/c$a;->e:Lu0/c;

    .line 2
    .line 3
    iput-object p2, p0, Lu0/c$a;->d:Le1/c;

    .line 4
    .line 5
    invoke-direct {p0}, Le1/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le1/b;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lu0/c$a;->d(Le1/b;)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Le1/b;)Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le1/b<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu0/c$a;->d:Le1/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le1/c;->a(Le1/b;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const v0, 0x40233333    # 2.55f

    .line 18
    .line 19
    .line 20
    mul-float/2addr p1, v0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
