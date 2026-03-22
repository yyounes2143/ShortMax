package kotlinx.serialization.json.internal;

import at.n;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonPrimitive;
import ms.b;
import rs.c;
import wt.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonTreeReader.kt */
@Metadata
@d(c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1", f = "JsonTreeReader.kt", l = {115}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class JsonTreeReader$readDeepRecursive$1 extends RestrictedSuspendLambda implements n<b<Unit, JsonElement>, Unit, c<? super JsonElement>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61995h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f61996i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ JsonTreeReader f61997j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readDeepRecursive$1(JsonTreeReader jsonTreeReader, c<? super JsonTreeReader$readDeepRecursive$1> cVar) {
        super(3, cVar);
        this.f61997j = jsonTreeReader;
    }

    @Override // at.n
    /* renamed from: i */
    public final Object invoke(b<Unit, JsonElement> bVar, Unit unit, c<? super JsonElement> cVar) {
        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$1 = new JsonTreeReader$readDeepRecursive$1(this.f61997j, cVar);
        jsonTreeReader$readDeepRecursive$1.f61996i = bVar;
        return jsonTreeReader$readDeepRecursive$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a aVar;
        a aVar2;
        JsonElement f10;
        JsonPrimitive j10;
        JsonPrimitive j11;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61995h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            b bVar = (b) this.f61996i;
            aVar = this.f61997j.f61991a;
            byte F = aVar.F();
            if (F == 1) {
                j11 = this.f61997j.j(true);
                return j11;
            } else if (F == 0) {
                j10 = this.f61997j.j(false);
                return j10;
            } else if (F == 6) {
                JsonTreeReader jsonTreeReader = this.f61997j;
                this.f61995h = 1;
                obj = jsonTreeReader.h(bVar, this);
                if (obj == f11) {
                    return f11;
                }
            } else if (F == 8) {
                f10 = this.f61997j.f();
                return f10;
            } else {
                aVar2 = this.f61997j.f61991a;
                a.x(aVar2, "Can't begin reading element, unexpected token", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        return (JsonElement) obj;
    }
}
