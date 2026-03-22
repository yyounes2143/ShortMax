package com.apm.insight.l;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: JSONWriter.java */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private Writer f7066a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f7067b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* compiled from: JSONWriter.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f7068a = new a("EMPTY_ARRAY", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final a f7069b = new a("NONEMPTY_ARRAY", 1);

        /* renamed from: c  reason: collision with root package name */
        public static final a f7070c = new a("EMPTY_OBJECT", 2);

        /* renamed from: d  reason: collision with root package name */
        public static final a f7071d = new a("DANGLING_KEY", 3);

        /* renamed from: e  reason: collision with root package name */
        public static final a f7072e = new a("NONEMPTY_OBJECT", 4);

        /* renamed from: f  reason: collision with root package name */
        public static final a f7073f = new a("NULL", 5);

        private a(String str, int i10) {
        }
    }

    private h(Writer writer) {
        this.f7066a = writer;
    }

    private h a() throws JSONException, IOException {
        return a(a.f7068a, "[");
    }

    private h b() throws JSONException, IOException {
        a aVar = a.f7068a;
        return a("]");
    }

    private h c() throws JSONException, IOException {
        return a(a.f7070c, "{");
    }

    private h d() throws JSONException, IOException {
        a aVar = a.f7068a;
        return a("}");
    }

    private a e() throws JSONException {
        List<a> list = this.f7067b;
        return list.get(list.size() - 1);
    }

    private void f() throws JSONException, IOException {
        if (this.f7067b.isEmpty()) {
            return;
        }
        a e10 = e();
        if (e10 == a.f7068a) {
            a(a.f7069b);
        } else if (e10 == a.f7069b) {
            this.f7066a.write(44);
        } else if (e10 == a.f7071d) {
            this.f7066a.write(":");
            a(a.f7072e);
        } else if (e10 == a.f7073f) {
        } else {
            throw new JSONException("Nesting problem");
        }
    }

    public final String toString() {
        return "";
    }

    private h a(a aVar, String str) throws JSONException, IOException {
        f();
        this.f7067b.add(aVar);
        this.f7066a.write(str);
        return this;
    }

    private void b(String str) throws IOException {
        this.f7066a.write("\"");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\f') {
                this.f7066a.write("\\f");
            } else if (charAt != '\r') {
                if (charAt != '\"' && charAt != '/' && charAt != '\\') {
                    switch (charAt) {
                        case '\b':
                            this.f7066a.write("\\b");
                            break;
                        case '\t':
                            this.f7066a.write("\\t");
                            break;
                        case '\n':
                            this.f7066a.write("\\n");
                            break;
                        default:
                            if (charAt <= 31) {
                                this.f7066a.write(String.format("\\u%04x", Integer.valueOf(charAt)));
                                break;
                            }
                            break;
                    }
                } else {
                    this.f7066a.write(92);
                }
                this.f7066a.write(charAt);
            } else {
                this.f7066a.write("\\r");
            }
        }
        this.f7066a.write("\"");
    }

    private h c(String str) throws JSONException, IOException {
        a e10 = e();
        if (e10 == a.f7072e) {
            this.f7066a.write(44);
        } else if (e10 != a.f7070c) {
            throw new JSONException("Nesting problem");
        }
        a(a.f7071d);
        b(str);
        return this;
    }

    private h a(String str) throws JSONException, IOException {
        e();
        List<a> list = this.f7067b;
        list.remove(list.size() - 1);
        this.f7066a.write(str);
        return this;
    }

    private void a(a aVar) {
        List<a> list = this.f7067b;
        list.set(list.size() - 1, aVar);
    }

    private h a(Object obj) throws JSONException, IOException {
        if (obj instanceof JSONArray) {
            a((JSONArray) obj);
            return this;
        } else if (obj instanceof JSONObject) {
            a((JSONObject) obj);
            return this;
        } else {
            f();
            if (obj != null && obj != JSONObject.NULL) {
                if (obj instanceof Boolean) {
                    this.f7066a.write(String.valueOf(obj));
                } else if (obj instanceof Number) {
                    this.f7066a.write(JSONObject.numberToString((Number) obj));
                } else {
                    b(obj.toString());
                }
            } else {
                this.f7066a.write("null");
            }
            return this;
        }
    }

    public static void a(JSONObject jSONObject, Writer writer) throws Throwable {
        new h(writer).a(jSONObject);
        writer.flush();
    }

    public static void a(JSONArray jSONArray, Writer writer) throws Throwable {
        new h(writer).a(jSONArray);
        writer.flush();
    }

    private void a(JSONObject jSONObject) throws JSONException, IOException {
        c();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            c(next).a(jSONObject.get(next));
        }
        d();
    }

    private void a(JSONArray jSONArray) throws JSONException, IOException {
        a();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            a(jSONArray.get(i10));
        }
        b();
    }
}
