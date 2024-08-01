require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "should create teacher" do
    visit teachers_url
    click_on "New teacher"

    fill_in "Address", with: @teacher.address
    fill_in "Area of specialization", with: @teacher.area_of_specialization
    fill_in "Cnpj", with: @teacher.cnpj
    fill_in "Cpf", with: @teacher.cpf
    fill_in "Date of birth", with: @teacher.date_of_birth
    fill_in "Email", with: @teacher.email
    fill_in "Name", with: @teacher.name
    fill_in "Phone", with: @teacher.phone
    fill_in "Pis", with: @teacher.pis
    fill_in "Profession", with: @teacher.profession
    fill_in "Professional experience", with: @teacher.professional_experience
    fill_in "Rg", with: @teacher.rg
    fill_in "Teaching experience", with: @teacher.teaching_experience
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "should update Teacher" do
    visit teacher_url(@teacher)
    click_on "Edit this teacher", match: :first

    fill_in "Address", with: @teacher.address
    fill_in "Area of specialization", with: @teacher.area_of_specialization
    fill_in "Cnpj", with: @teacher.cnpj
    fill_in "Cpf", with: @teacher.cpf
    fill_in "Date of birth", with: @teacher.date_of_birth
    fill_in "Email", with: @teacher.email
    fill_in "Name", with: @teacher.name
    fill_in "Phone", with: @teacher.phone
    fill_in "Pis", with: @teacher.pis
    fill_in "Profession", with: @teacher.profession
    fill_in "Professional experience", with: @teacher.professional_experience
    fill_in "Rg", with: @teacher.rg
    fill_in "Teaching experience", with: @teacher.teaching_experience
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher" do
    visit teacher_url(@teacher)
    click_on "Destroy this teacher", match: :first

    assert_text "Teacher was successfully destroyed"
  end
end
