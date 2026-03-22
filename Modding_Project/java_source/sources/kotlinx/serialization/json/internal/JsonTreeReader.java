package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.json.e;
import kotlinx.serialization.json.t;
import org.jetbrains.annotations.NotNull;
import wt.a;
import wt.b;
import wt.b0;
/* compiled from: JsonTreeReader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJsonTreeReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,121:1\n27#1,25:122\n27#1,25:147\n513#2,3:172\n*S KotlinDebug\n*F\n+ 1 JsonTreeReader.kt\nkotlinx/serialization/json/internal/JsonTreeReader\n*L\n19#1:122,25\n24#1:147,25\n64#1:172,3\n*E\n"})
/* loaded from: classes8.dex */
public final class JsonTreeReader {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final a f61991a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f61992b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f61993c;

    /* renamed from: d  reason: collision with root package name */
    private int f61994d;

    public JsonTreeReader(@NotNull e configuration, @NotNull a lexer) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(lexer, "lexer");
        this.f61991a = lexer;
        this.f61992b = configuration.q();
        this.f61993c = configuration.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JsonElement f() {
        boolean z10;
        byte j10 = this.f61991a.j();
        if (this.f61991a.F() != 4) {
            ArrayList arrayList = new ArrayList();
            while (this.f61991a.e()) {
                arrayList.add(e());
                j10 = this.f61991a.j();
                if (j10 != 4) {
                    a aVar = this.f61991a;
                    if (j10 == 9) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    int i10 = aVar.f70272a;
                    if (!z10) {
                        a.x(aVar, "Expected end of the array or comma", i10, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                }
            }
            if (j10 == 8) {
                this.f61991a.k((byte) 9);
            } else if (j10 == 4) {
                if (this.f61993c) {
                    this.f61991a.k((byte) 9);
                } else {
                    b0.h(this.f61991a, "array");
                    throw new KotlinNothingValueException();
                }
            }
            return new JsonArray(arrayList);
        }
        a.x(this.f61991a, "Unexpected leading comma", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final JsonElement g() {
        return (JsonElement) kotlin.a.b(new ms.a(new JsonTreeReader$readDeepRecursive$1(this, null)), Unit.f60915a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0096 -> B:27:0x00a0). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(ms.b<kotlin.Unit, kotlinx.serialization.json.JsonElement> r21, rs.c<? super kotlinx.serialization.json.JsonElement> r22) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonTreeReader.h(ms.b, rs.c):java.lang.Object");
    }

    private final JsonElement i() {
        String o10;
        byte k10 = this.f61991a.k((byte) 6);
        if (this.f61991a.F() != 4) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (true) {
                if (!this.f61991a.e()) {
                    break;
                }
                if (this.f61992b) {
                    o10 = this.f61991a.q();
                } else {
                    o10 = this.f61991a.o();
                }
                this.f61991a.k((byte) 5);
                linkedHashMap.put(o10, e());
                k10 = this.f61991a.j();
                if (k10 != 4) {
                    if (k10 != 7) {
                        a.x(this.f61991a, "Expected end of the object or comma", 0, null, 6, null);
                        throw new KotlinNothingValueException();
                    }
                }
            }
            if (k10 == 6) {
                this.f61991a.k((byte) 7);
            } else if (k10 == 4) {
                if (this.f61993c) {
                    this.f61991a.k((byte) 7);
                } else {
                    b0.i(this.f61991a, null, 1, null);
                    throw new KotlinNothingValueException();
                }
            }
            return new JsonObject(linkedHashMap);
        }
        a.x(this.f61991a, "Unexpected leading comma", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JsonPrimitive j(boolean z10) {
        String q10;
        if (!this.f61992b && z10) {
            q10 = this.f61991a.o();
        } else {
            q10 = this.f61991a.q();
        }
        String str = q10;
        if (!z10 && Intrinsics.areEqual(str, "null")) {
            return JsonNull.INSTANCE;
        }
        return new t(str, z10, null, 4, null);
    }

    @NotNull
    public final JsonElement e() {
        JsonElement i10;
        byte F = this.f61991a.F();
        if (F == 1) {
            return j(true);
        }
        if (F == 0) {
            return j(false);
        }
        if (F == 6) {
            int i11 = this.f61994d + 1;
            this.f61994d = i11;
            if (i11 == 200) {
                i10 = g();
            } else {
                i10 = i();
            }
            this.f61994d--;
            return i10;
        } else if (F == 8) {
            return f();
        } else {
            a.x(this.f61991a, "Cannot read Json element because of unexpected " + b.c(F), 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }
}
