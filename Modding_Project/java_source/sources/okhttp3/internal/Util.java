package okhttp3.internal;

import androidx.collection.SieveCacheKt;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import ms.d;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: Util.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokhttp3/internal/Util\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,636:1\n37#2,2:637\n1627#3,6:639\n1#4:645\n1549#5:646\n1620#5,3:647\n*S KotlinDebug\n*F\n+ 1 Util.kt\nokhttp3/internal/Util\n*L\n127#1:637,2\n167#1:639,6\n300#1:646\n300#1:647,3\n*E\n"})
/* loaded from: classes8.dex */
public final class Util {
    @NotNull

    /* renamed from: a */
    public static final byte[] f63627a;
    @NotNull

    /* renamed from: b */
    public static final Headers f63628b = Headers.f63454b.h(new String[0]);
    @NotNull

    /* renamed from: c */
    public static final ResponseBody f63629c;
    @NotNull

    /* renamed from: d */
    public static final RequestBody f63630d;
    @NotNull

    /* renamed from: e */
    private static final Options f63631e;
    @NotNull

    /* renamed from: f */
    public static final TimeZone f63632f;
    @NotNull

    /* renamed from: g */
    private static final Regex f63633g;

    /* renamed from: h */
    public static final boolean f63634h;
    @NotNull

    /* renamed from: i */
    public static final String f63635i;

    static {
        byte[] bArr = new byte[0];
        f63627a = bArr;
        f63629c = ResponseBody.Companion.i(ResponseBody.Companion, bArr, null, 1, null);
        f63630d = RequestBody.Companion.o(RequestBody.Companion, bArr, null, 0, 0, 7, null);
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        f63631e = companion.of(companion2.decodeHex("efbbbf"), companion2.decodeHex("feff"), companion2.decodeHex("fffe"), companion2.decodeHex("0000ffff"), companion2.decodeHex("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        Intrinsics.checkNotNull(timeZone);
        f63632f = timeZone;
        f63633g = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        f63634h = false;
        String name = OkHttpClient.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "OkHttpClient::class.java.name");
        f63635i = StringsKt.Q0(StringsKt.O0(name, "okhttp3."), "Client");
    }

    public static /* synthetic */ int A(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return z(str, i10, i11);
    }

    public static final int B(@NotNull String str, int i10, int i11) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int i12 = i11 - 1;
        if (i10 <= i12) {
            while (true) {
                char charAt = str.charAt(i12);
                if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                    if (i12 == i10) {
                        break;
                    }
                    i12--;
                } else {
                    return i12 + 1;
                }
            }
        }
        return i10;
    }

    public static /* synthetic */ int C(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return B(str, i10, i11);
    }

    public static final int D(@NotNull String str, int i10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt != ' ' && charAt != '\t') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }

    @NotNull
    public static final String[] E(@NotNull String[] strArr, @NotNull String[] other, @NotNull Comparator<? super String> comparator) {
        Intrinsics.checkNotNullParameter(strArr, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = other.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (comparator.compare(str, other[i10]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i10++;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean F(@NotNull FileSystem fileSystem, @NotNull File file) {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(file, "file");
        Sink sink = fileSystem.sink(file);
        try {
            try {
                fileSystem.delete(file);
                b.a(sink, null);
                return true;
            } catch (IOException unused) {
                Unit unit = Unit.f60915a;
                b.a(sink, null);
                fileSystem.delete(file);
                return false;
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                b.a(sink, th2);
                throw th3;
            }
        }
    }

    public static final boolean G(@NotNull Socket socket, @NotNull BufferedSource source) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                boolean z10 = !source.exhausted();
                socket.setSoTimeout(soTimeout);
                return z10;
            } catch (Throwable th2) {
                socket.setSoTimeout(soTimeout);
                throw th2;
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean H(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (StringsKt.G(name, "Authorization", true) || StringsKt.G(name, "Cookie", true) || StringsKt.G(name, "Proxy-Authorization", true) || StringsKt.G(name, "Set-Cookie", true)) {
            return true;
        }
        return false;
    }

    public static final int I(char c10) {
        if ('0' <= c10 && c10 < ':') {
            return c10 - '0';
        }
        if ('a' <= c10 && c10 < 'g') {
            return c10 - 'W';
        }
        if ('A' <= c10 && c10 < 'G') {
            return c10 - '7';
        }
        return -1;
    }

    @NotNull
    public static final Charset J(@NotNull BufferedSource bufferedSource, @NotNull Charset charset) throws IOException {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(charset, "default");
        int select = bufferedSource.select(f63631e);
        if (select != -1) {
            if (select != 0) {
                if (select != 1) {
                    if (select != 2) {
                        if (select != 3) {
                            if (select == 4) {
                                return Charsets.f61156a.b();
                            }
                            throw new AssertionError();
                        }
                        return Charsets.f61156a.a();
                    }
                    Charset UTF_16LE = StandardCharsets.UTF_16LE;
                    Intrinsics.checkNotNullExpressionValue(UTF_16LE, "UTF_16LE");
                    return UTF_16LE;
                }
                Charset UTF_16BE = StandardCharsets.UTF_16BE;
                Intrinsics.checkNotNullExpressionValue(UTF_16BE, "UTF_16BE");
                return UTF_16BE;
            }
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            return UTF_8;
        }
        return charset;
    }

    public static final int K(@NotNull BufferedSource bufferedSource) throws IOException {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        return d(bufferedSource.readByte(), 255) | (d(bufferedSource.readByte(), 255) << 16) | (d(bufferedSource.readByte(), 255) << 8);
    }

    public static final int L(@NotNull Buffer buffer, byte b10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        int i10 = 0;
        while (!buffer.exhausted() && buffer.getByte(0L) == b10) {
            i10++;
            buffer.readByte();
        }
        return i10;
    }

    public static final boolean M(@NotNull Source source, int i10, @NotNull TimeUnit timeUnit) throws IOException {
        long j10;
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        long nanoTime = System.nanoTime();
        if (source.timeout().hasDeadline()) {
            j10 = source.timeout().deadlineNanoTime() - nanoTime;
        } else {
            j10 = Long.MAX_VALUE;
        }
        source.timeout().deadlineNanoTime(Math.min(j10, timeUnit.toNanos(i10)) + nanoTime);
        try {
            Buffer buffer = new Buffer();
            while (source.read(buffer, 8192L) != -1) {
                buffer.clear();
            }
            if (j10 == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(nanoTime + j10);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (j10 == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(nanoTime + j10);
            }
            return false;
        } catch (Throwable th2) {
            if (j10 == Long.MAX_VALUE) {
                source.timeout().clearDeadline();
            } else {
                source.timeout().deadlineNanoTime(nanoTime + j10);
            }
            throw th2;
        }
    }

    @NotNull
    public static final ThreadFactory N(@NotNull final String name, final boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new ThreadFactory() { // from class: yt.b
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread O;
                O = Util.O(name, z10, runnable);
                return O;
            }
        };
    }

    public static final Thread O(String name, boolean z10, Runnable runnable) {
        Intrinsics.checkNotNullParameter(name, "$name");
        Thread thread = new Thread(runnable, name);
        thread.setDaemon(z10);
        return thread;
    }

    @NotNull
    public static final List<Header> P(@NotNull Headers headers) {
        Intrinsics.checkNotNullParameter(headers, "<this>");
        IntRange v10 = e.v(0, headers.size());
        ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
        Iterator<Integer> it = v10.iterator();
        while (it.hasNext()) {
            int nextInt = ((m0) it).nextInt();
            arrayList.add(new Header(headers.d(nextInt), headers.i(nextInt)));
        }
        return arrayList;
    }

    @NotNull
    public static final Headers Q(@NotNull List<Header> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.d(header.a().utf8(), header.b().utf8());
        }
        return builder.f();
    }

    @NotNull
    public static final String R(int i10) {
        String hexString = Integer.toHexString(i10);
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(this)");
        return hexString;
    }

    @NotNull
    public static final String S(long j10) {
        String hexString = Long.toHexString(j10);
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(this)");
        return hexString;
    }

    @NotNull
    public static final String T(@NotNull HttpUrl httpUrl, boolean z10) {
        String i10;
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        if (StringsKt.b0(httpUrl.i(), ":", false, 2, null)) {
            i10 = '[' + httpUrl.i() + ']';
        } else {
            i10 = httpUrl.i();
        }
        if (z10 || httpUrl.o() != HttpUrl.f63457k.c(httpUrl.t())) {
            return i10 + ':' + httpUrl.o();
        }
        return i10;
    }

    public static /* synthetic */ String U(HttpUrl httpUrl, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return T(httpUrl, z10);
    }

    @NotNull
    public static final <T> List<T> V(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<T> unmodifiableList = Collections.unmodifiableList(CollectionsKt.g1(list));
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    @NotNull
    public static final <K, V> Map<K, V> W(@NotNull Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map.isEmpty()) {
            return p0.i();
        }
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "{\n    Collections.unmodi…(LinkedHashMap(this))\n  }");
        return unmodifiableMap;
    }

    public static final long X(@NotNull String str, long j10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    public static final int Y(@Nullable String str, int i10) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > SieveCacheKt.NodeLinkMask) {
                    return Integer.MAX_VALUE;
                }
                if (parseLong < 0) {
                    return 0;
                }
                return (int) parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        return i10;
    }

    @NotNull
    public static final String Z(@NotNull String str, int i10, int i11) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int z10 = z(str, i10, i11);
        String substring = str.substring(z10, B(str, z10, i11));
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String a0(String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = str.length();
        }
        return Z(str, i10, i11);
    }

    @NotNull
    public static final Throwable b0(@NotNull Exception exc, @NotNull List<? extends Exception> suppressed) {
        Intrinsics.checkNotNullParameter(exc, "<this>");
        Intrinsics.checkNotNullParameter(suppressed, "suppressed");
        for (Exception exc2 : suppressed) {
            d.a(exc, exc2);
        }
        return exc;
    }

    public static final <E> void c(@NotNull List<E> list, E e10) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (!list.contains(e10)) {
            list.add(e10);
        }
    }

    public static final void c0(@NotNull BufferedSink bufferedSink, int i10) throws IOException {
        Intrinsics.checkNotNullParameter(bufferedSink, "<this>");
        bufferedSink.writeByte((i10 >>> 16) & 255);
        bufferedSink.writeByte((i10 >>> 8) & 255);
        bufferedSink.writeByte(i10 & 255);
    }

    public static final int d(byte b10, int i10) {
        return b10 & i10;
    }

    public static final int e(short s10, int i10) {
        return s10 & i10;
    }

    public static final long f(int i10, long j10) {
        return i10 & j10;
    }

    @NotNull
    public static final EventListener.Factory g(@NotNull final EventListener eventListener) {
        Intrinsics.checkNotNullParameter(eventListener, "<this>");
        return new EventListener.Factory() { // from class: yt.a
            @Override // okhttp3.EventListener.Factory
            public final EventListener a(Call call) {
                EventListener h10;
                h10 = Util.h(EventListener.this, call);
                return h10;
            }
        };
    }

    public static final EventListener h(EventListener this_asFactory, Call it) {
        Intrinsics.checkNotNullParameter(this_asFactory, "$this_asFactory");
        Intrinsics.checkNotNullParameter(it, "it");
        return this_asFactory;
    }

    public static final boolean i(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return f63633g.k(str);
    }

    public static final boolean j(@NotNull HttpUrl httpUrl, @NotNull HttpUrl other) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (Intrinsics.areEqual(httpUrl.i(), other.i()) && httpUrl.o() == other.o() && Intrinsics.areEqual(httpUrl.t(), other.t())) {
            return true;
        }
        return false;
    }

    public static final int k(@NotNull String name, long j10, @Nullable TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(name, "name");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0) {
            if (timeUnit != null) {
                long millis = timeUnit.toMillis(j10);
                if (millis <= SieveCacheKt.NodeLinkMask) {
                    if (millis == 0 && i10 > 0) {
                        throw new IllegalArgumentException((name + " too small.").toString());
                    }
                    return (int) millis;
                }
                throw new IllegalArgumentException((name + " too large.").toString());
            }
            throw new IllegalStateException("unit == null");
        }
        throw new IllegalStateException((name + " < 0").toString());
    }

    public static final void l(long j10, long j11, long j12) {
        if ((j11 | j12) >= 0 && j11 <= j10 && j10 - j11 >= j12) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public static final void m(@NotNull Closeable closeable) {
        Intrinsics.checkNotNullParameter(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception unused) {
        }
    }

    public static final void n(@NotNull Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e10) {
            throw e10;
        } catch (RuntimeException e11) {
            if (Intrinsics.areEqual(e11.getMessage(), "bio == null")) {
                return;
            }
            throw e11;
        } catch (Exception unused) {
        }
    }

    @NotNull
    public static final String[] o(@NotNull String[] strArr, @NotNull String value) {
        Intrinsics.checkNotNullParameter(strArr, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        Object[] copyOf = Arrays.copyOf(strArr, strArr.length + 1);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
        String[] strArr2 = (String[]) copyOf;
        strArr2[n.r0(strArr2)] = value;
        return strArr2;
    }

    public static final int p(@NotNull String str, char c10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        while (i10 < i11) {
            if (str.charAt(i10) == c10) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static final int q(@NotNull String str, @NotNull String delimiters, int i10, int i11) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        while (i10 < i11) {
            if (StringsKt.a0(delimiters, str.charAt(i10), false, 2, null)) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static /* synthetic */ int r(String str, char c10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = str.length();
        }
        return p(str, c10, i10, i11);
    }

    public static final boolean s(@NotNull Source source, int i10, @NotNull TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        try {
            return M(source, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    @NotNull
    public static final String t(@NotNull String format, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        String format2 = String.format(locale, format, Arrays.copyOf(copyOf, copyOf.length));
        Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
        return format2;
    }

    public static final boolean u(@NotNull String[] strArr, @Nullable String[] strArr2, @NotNull Comparator<? super String> comparator) {
        Intrinsics.checkNotNullParameter(strArr, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                Iterator it = ArrayIteratorKt.iterator(strArr2);
                while (it.hasNext()) {
                    if (comparator.compare(str, (String) it.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final long v(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        String a10 = response.u().a("Content-Length");
        if (a10 == null) {
            return -1L;
        }
        return X(a10, -1L);
    }

    @SafeVarargs
    @NotNull
    public static final <T> List<T> w(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        List<T> unmodifiableList = Collections.unmodifiableList(CollectionsKt.q(Arrays.copyOf(objArr, objArr.length)));
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return unmodifiableList;
    }

    public static final int x(@NotNull String[] strArr, @NotNull String value, @NotNull Comparator<String> comparator) {
        Intrinsics.checkNotNullParameter(strArr, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], value) == 0) {
                return i10;
            }
        }
        return -1;
    }

    public static final int y(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (Intrinsics.compare((int) charAt, 31) <= 0 || Intrinsics.compare((int) charAt, 127) >= 0) {
                return i10;
            }
        }
        return -1;
    }

    public static final int z(@NotNull String str, int i10, int i11) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        while (i10 < i11) {
            char charAt = str.charAt(i10);
            if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                i10++;
            } else {
                return i10;
            }
        }
        return i11;
    }
}
