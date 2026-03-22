package kn;

import com.ss.texturerender.TextureRenderKeys;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* compiled from: UrlTemplate.java */
/* loaded from: classes8.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f60892a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Integer> f60893b;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f60894c;

    private n(List<String> list, List<Integer> list2, List<String> list3) {
        this.f60892a = list;
        this.f60893b = list2;
        this.f60894c = list3;
    }

    public static n b(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        c(str, arrayList, arrayList2, arrayList3);
        return new n(arrayList, arrayList2, arrayList3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void c(String str, List<String> list, List<Integer> list2, List<String> list3) {
        String str2;
        boolean z10;
        list.add("");
        int i10 = 0;
        while (i10 < str.length()) {
            int indexOf = str.indexOf("$", i10);
            if (indexOf == -1) {
                list.set(list2.size(), list.get(list2.size()) + str.substring(i10));
                i10 = str.length();
            } else if (indexOf != i10) {
                list.set(list2.size(), list.get(list2.size()) + str.substring(i10, indexOf));
                i10 = indexOf;
            } else if (str.startsWith("$$", i10)) {
                list.set(list2.size(), list.get(list2.size()) + "$");
                i10 += 2;
            } else {
                list3.add("");
                int i11 = i10 + 1;
                int indexOf2 = str.indexOf("$", i11);
                String substring = str.substring(i11, indexOf2);
                if (substring.equals("RepresentationID")) {
                    list2.add(1);
                } else {
                    int indexOf3 = substring.indexOf("%0");
                    if (indexOf3 != -1) {
                        str2 = substring.substring(indexOf3);
                        if (!str2.endsWith("d") && !str2.endsWith(TextureRenderKeys.KEY_IS_X) && !str2.endsWith("X")) {
                            str2 = str2 + "d";
                        }
                        substring = substring.substring(0, indexOf3);
                    } else {
                        str2 = "%01d";
                    }
                    substring.hashCode();
                    switch (substring.hashCode()) {
                        case -1950496919:
                            if (substring.equals("Number")) {
                                z10 = false;
                                break;
                            }
                            z10 = true;
                            break;
                        case 2606829:
                            if (substring.equals("Time")) {
                                z10 = true;
                                break;
                            }
                            z10 = true;
                            break;
                        case 38199441:
                            if (substring.equals("Bandwidth")) {
                                z10 = true;
                                break;
                            }
                            z10 = true;
                            break;
                        default:
                            z10 = true;
                            break;
                    }
                    switch (z10) {
                        case false:
                            list2.add(2);
                            break;
                        case true:
                            list2.add(4);
                            break;
                        case true:
                            list2.add(3);
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid template: " + str);
                    }
                    list3.set(list2.size() - 1, str2);
                }
                list.add("");
                i10 = indexOf2 + 1;
            }
        }
    }

    public String a(String str, long j10, int i10, long j11) {
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < this.f60893b.size(); i11++) {
            sb2.append(this.f60892a.get(i11));
            if (this.f60893b.get(i11).intValue() == 1) {
                sb2.append(str);
            } else if (this.f60893b.get(i11).intValue() == 2) {
                sb2.append(String.format(Locale.US, this.f60894c.get(i11), Long.valueOf(j10)));
            } else if (this.f60893b.get(i11).intValue() == 3) {
                sb2.append(String.format(Locale.US, this.f60894c.get(i11), Integer.valueOf(i10)));
            } else if (this.f60893b.get(i11).intValue() == 4) {
                sb2.append(String.format(Locale.US, this.f60894c.get(i11), Long.valueOf(j11)));
            }
        }
        sb2.append(this.f60892a.get(this.f60893b.size()));
        return sb2.toString();
    }
}
