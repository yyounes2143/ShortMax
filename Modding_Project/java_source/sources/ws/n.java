package ws;

import java.io.BufferedReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReadWrite.kt */
@Metadata
@SourceDebugExtension({"SMAP\nReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,157:1\n57#1:158\n1#2:159\n1#2:162\n1317#3,2:160\n*S KotlinDebug\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n*L\n35#1:158\n35#1:159\n35#1:160,2\n*E\n"})
/* loaded from: classes8.dex */
public final class n {
    public static final long b(@NotNull Reader reader, @NotNull Writer out, int i10) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        char[] cArr = new char[i10];
        int read = reader.read(cArr);
        long j10 = 0;
        while (read >= 0) {
            out.write(cArr, 0, read);
            j10 += read;
            read = reader.read(cArr);
        }
        return j10;
    }

    public static /* synthetic */ long c(Reader reader, Writer writer, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 8192;
        }
        return b(reader, writer, i10);
    }

    public static final void d(@NotNull Reader reader, @NotNull Function1<? super String, Unit> action) {
        BufferedReader bufferedReader;
        Intrinsics.checkNotNullParameter(reader, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        if (reader instanceof BufferedReader) {
            bufferedReader = (BufferedReader) reader;
        } else {
            bufferedReader = new BufferedReader(reader, 8192);
        }
        try {
            for (String str : e(bufferedReader)) {
                action.invoke(str);
            }
            Unit unit = Unit.f60915a;
            b.a(bufferedReader, null);
        } finally {
        }
    }

    @NotNull
    public static final Sequence<String> e(@NotNull BufferedReader bufferedReader) {
        Intrinsics.checkNotNullParameter(bufferedReader, "<this>");
        return kotlin.sequences.j.f(new l(bufferedReader));
    }

    @NotNull
    public static final List<String> f(@NotNull Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        final ArrayList arrayList = new ArrayList();
        d(reader, new Function1() { // from class: ws.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit g10;
                g10 = n.g(arrayList, (String) obj);
                return g10;
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(ArrayList arrayList, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        arrayList.add(it);
        return Unit.f60915a;
    }

    @NotNull
    public static final String h(@NotNull Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        StringWriter stringWriter = new StringWriter();
        c(reader, stringWriter, 0, 2, null);
        String stringWriter2 = stringWriter.toString();
        Intrinsics.checkNotNullExpressionValue(stringWriter2, "toString(...)");
        return stringWriter2;
    }
}
